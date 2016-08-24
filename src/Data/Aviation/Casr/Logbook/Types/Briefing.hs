{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TemplateHaskell #-}

module Data.Aviation.Casr.Logbook.Types.Briefing(
  Briefing(..)
, HasBriefing(..)
) where
  
import Control.Lens(makeClassy)
import Data.Aviation.Casr.Logbook.Types.Aviator(Aviator)
import Data.Aviation.Casr.Logbook.Types.Location(Location)
import Data.Aviation.Casr.Logbook.Types.Time(Time)
import Data.Aviation.Casr.Logbook.Types.TimeAmount(TimeAmount)
import Data.Eq(Eq)
import Data.Ord(Ord)
import Data.String(String)
import Prelude(Show)

data Briefing =
  Briefing {
    _briefingName :: String
  , _briefingLocation :: Location
  , _briefingTime :: Time
  , _briefer :: Aviator
  , _briefingTimeAmount :: TimeAmount
  } deriving (Eq, Ord, Show)

makeClassy ''Briefing
