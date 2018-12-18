module Blog.Types where

import           Web.Spock
import           Web.Spock.Config
import           Data.IORef

--- Some types
data BlogSession = EmptySession -- Maybe SessionId
data BlogState = DummyAppState (IORef Int)
type BlogApp = SpockM () BlogSession BlogState ()
type BlogAction a = SpockAction () BlogSession BlogState a

