{-# LANGUAGE DeriveGeneric, DeriveAnyClass #-}

module Types where

import GHC.Generics
import Data.Aeson
import Servant.API
import qualified Data.Text as Text

data CResult
    = CResult
    { errors :: [String] }
  deriving (Generic, Show, FromJSON, ToJSON)

data CCode
    = CCode
    { code :: String }
  deriving (Generic, Show, FromJSON, ToJSON)