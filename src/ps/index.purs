module Blobox.Index where

import Data.Maybe
import Prelude

import Axios (Config(..), Method(..), Header(..), axios)
import Blobox.Blob.AST as Blob
import Blobox.Requests.Types (CResult(..), CCode(..))
import Data.Either (Either(..))
import Effect (Effect)
import Effect.Aff (launchAff_)
import Effect.Class (liftEffect)
import Effect.Class.Console (log, logShow)
import Effect.Console (error)
import Effect.Unsafe (unsafePerformEffect)
import Foreign (Foreign)
import Foreign.Generic (class Encode, encode, decode)
import Partial.Unsafe (unsafePartial)
import Web.DOM.NonElementParentNode (getElementById)
import Web.HTML (HTMLDocument, window)
import Web.HTML.HTMLDocument (toNonElementParentNode)
import Web.HTML.HTMLObjectElement (fromElement, setData)
import Web.HTML.Window (document)

foreign import showForeign :: Foreign -> String

compile :: Blob.Program -> Array String
compile prog = unsafePerformEffect do
    log (showForeign $ encode prog)
    log (showForeign $ encode [Blob.Declaration "test" unit, Blob.Definition "f" ["x"] unit])
    error "Not yet implemented!" $> []