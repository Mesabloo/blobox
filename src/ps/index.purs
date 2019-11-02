module Blobox.Index where

import Data.Maybe
import Prelude

import Axios (Config(..), Method(..), Header(..), axios)
import Blobox.Requests.Types (CResult(..), CCode(..))
import Data.Either (Either(..))
import Effect (Effect)
import Effect.Aff (launchAff_)
import Effect.Class (liftEffect)
import Effect.Class.Console (log, logShow)
import Effect.Console (error)
import Partial.Unsafe (unsafePartial)
import Web.DOM.NonElementParentNode (getElementById)
import Web.HTML (HTMLDocument, window)
import Web.HTML.HTMLDocument (toNonElementParentNode)
import Web.HTML.HTMLObjectElement (fromElement, setData)
import Web.HTML.Window (document)
import Blobox.Blob.AST as Blob

compile :: Blob.Program -> Effect (Array String)
compile prog = error "Not implemented" $> []