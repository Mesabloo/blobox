module Blobox.Requests.Types where

import Axios (class Axios, genericAxios)
import Foreign.Generic (class Decode, class Encode, defaultOptions, genericDecode, genericEncode)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Prelude
import Blobox.Blob.AST as Blob

newtype CResult
    = CResult
    { errors :: Array String }
derive instance genericCResult :: Generic CResult _

instance decodeCResult :: Decode CResult where
    decode = genericDecode (defaultOptions { unwrapSingleConstructors = true })
instance showCResult :: Show CResult where
    show = genericShow

newtype CCode
    = CCode
    { code :: Blob.Program }
derive instance genericCCode :: Generic CCode _

instance encodeCCode :: Encode CCode where
    encode = genericEncode (defaultOptions { unwrapSingleConstructors = true })
-- instance showCCode :: Show CCode where
--     show = genericShow

instance axiosCResult :: Axios CCode CResult where
    axios = genericAxios