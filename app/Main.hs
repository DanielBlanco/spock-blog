{-# LANGUAGE OverloadedStrings #-}

-- Handles Spock setup.
module Main where


import           Web.Spock
import           Web.Spock.Config
import           Blog.Routes
import           Blog.Types

--import           Control.Monad.Trans
import           Data.IORef
--import           Data.Monoid
--import qualified Data.Text                     as T

{-|  We start out by configuring Spock -}
main :: IO ()
main = do
  ref      <- newIORef 0
  spockCfg <- defaultSpockCfg EmptySession PCNoDatabase (DummyAppState ref)
  runSpock 8080 (spock spockCfg routes)

{-| SpockM conn session st a -}
-- app :: SpockM () MySession MyAppState ()
-- app = do
--   get root $ Web.Actions.Blog.root
--   get ("hello" <//> var) $ \name -> do
--     (DummyAppState ref) <- getState
--     visitorNumber <- liftIO $ atomicModifyIORef' ref $ \i -> (i + 1, i + 1)
--     text
--       ("Hello " <> name <> ", you are visitor number " <> T.pack
--         (show visitorNumber)
--       )
