{-# LANGUAGE OverloadedStrings #-}

-- Handles All Blog actions.
module Blog.Actions.Home where

import           Web.Spock               hiding ( SessionId )
import qualified Data.Text                     as T
import           Blog.Types


{-| root action -}
root :: BlogAction a
root = text "Hello World!"

{-| Greetings action -}
greet :: T.Text -> BlogAction a
greet _name = text "Hello!"
