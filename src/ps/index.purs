module Blobox.Index where

import Data.Maybe
import Prelude

import Axios (Config(..), Method(..), Header(..), axios)
import Blobox.Requests.Types (CResult(..), CCode(..))
import Data.Either (Either(..))
import Effect (Effect)
import Effect.Aff (launchAff_)
import Effect.Class.Console (log, logShow)
import Partial.Unsafe (unsafePartial)
import Web.DOM.NonElementParentNode (getElementById)
import Web.HTML (HTMLDocument, window)
import Web.HTML.HTMLDocument (toNonElementParentNode)
import Web.HTML.HTMLObjectElement (fromElement, setData)
import Web.HTML.Window (document)
import Effect.Class (liftEffect)

main :: Effect Unit
main = launchAff_ do
    let postConfig = Config
            { url : "http://localhost:42666/compile"
            , method : POST
            , data : CCode { code : "id x = x" }
            , headers :
                [ Header "Content-type" "application/json"
                , Header "Accept" "application/json"
                , Header "Charset" "utf-8" ] }

    doc <- toNonElementParentNode <$> liftEffect (join (document <$> window))

    axios postConfig >>= case _ of
        Left err -> logShow err
        Right (CResult res) -> do
            (((=<<) fromElement) <$> liftEffect (getElementById "test" doc)) >>= case _ of
                Nothing -> logShow res
                Just x  -> liftEffect $ setData (show res) x