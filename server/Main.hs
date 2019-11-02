{-# LANGUAGE TypeOperators, DataKinds #-}

module Main where

import Servant
import Data.Aeson
import Network.Wai
import Network.Wai.Handler.Warp
import Types

type API = "compile" :> ReqBody '[JSON] CCode :> Post '[JSON] CResult

main :: IO ()
main = run 42666 bloboxApp

bloboxApp :: Application
bloboxApp = serve bloboxAPI bloboxServer

bloboxAPI :: Proxy API
bloboxAPI = Proxy

bloboxServer :: Server API
bloboxServer code = pure nullReq

nullReq :: CResult
nullReq = CResult []