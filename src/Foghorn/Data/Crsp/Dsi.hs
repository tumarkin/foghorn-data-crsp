{-|
Module      : Foghorn.Data.Crsp.Dsi
Description : CRSP Daily Stock Indexes (DSI) variable definitions for Foghorn DSL
Copyright   : (c) Rob Tumarkin, 2025
License     : Non-commercial (see LICENSE file)
Maintainer  : https://github.com/tumarkin
Stability   : experimental
Portability : portable

This module defines the variable set for the CRSP Daily Stock Indexes (DSI),
represented as a GADT ('DsiV'). Each constructor corresponds to a named CRSP
variable and is indexed by an 'EconType' (e.g., 'Float_', 'Int_', 'Text_').
-}
module Foghorn.Data.Crsp.Dsi where

import Foghorn.Base
import Prelude

-- | Generalized algebraic data type (GADT) of CRSP DSI variables.
data DsiV (i :: EconIndices) (a :: EconType) where
    -- | Date of Observation
    TradingDate :: DsiV ('TimeSeries 'TradingDate_) 'TradingDate_
    -- | Value-Weighted Return-incl. djvidends
    Vwretd :: DsiV ('TimeSeries 'TradingDate_) 'Float_
    -- | Value-Weighted Return-excl. dividends
    Vwretx :: DsiV ('TimeSeries 'TradingDate_) 'Float_
    -- | Equal-Weighted Return-incl. dividends
    Ewretd :: DsiV ('TimeSeries 'TradingDate_) 'Float_
    -- | Equal-Weighted Return-excl. dividends
    Ewretx :: DsiV ('TimeSeries 'TradingDate_) 'Float_
    -- | Return on the S&P 500 Index
    Sprtrn :: DsiV ('TimeSeries 'TradingDate_) 'Float_
    -- | Level of the S&P 500 Index
    Spindx :: DsiV ('TimeSeries 'TradingDate_) 'Float_
    -- | Total Market Value
    Totval :: DsiV ('TimeSeries 'TradingDate_) 'Float_
    -- | Total Market Count
    Totcnt :: DsiV ('TimeSeries 'TradingDate_) 'Float_
    -- | Market Value of Securities Used
    Usdval :: DsiV ('TimeSeries 'TradingDate_) 'Float_
    -- | Count of Securities Used
    Usdcnt :: DsiV ('TimeSeries 'TradingDate_) 'Float_

deriving instance Show (DsiV i a)
deriving instance Eq (DsiV i a)
deriving instance Ord (DsiV i a)
