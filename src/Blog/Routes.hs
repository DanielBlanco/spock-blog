{-# LANGUAGE OverloadedStrings #-}

-- Handles All Blog actions.
module Blog.Routes where

import           Web.Spock
import           Blog.Types
import qualified Blog.Actions.Home             as Home

routes :: BlogApp
routes = do
  get root               Home.root
  get ("hello" <//> var) Home.greet
