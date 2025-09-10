{-|
Module      : Foghorn.Data.Crsp.Msf
Description : CRSP Monthly Stock File (MSF) variable definitions for Foghorn DSL
Copyright   : (c) Rob Tumarkin, 2025
License     : Non-commercial (see LICENSE file)
Maintainer  : https://github.com/tumarkin
Stability   : experimental
Portability : portable

This module defines the variable set for the CRSP Monthly Stock File (MSF),
represented as a GADT ('MsfV'). Each constructor corresponds to a named CRSP
variable and is indexed by an 'EconType' (e.g., 'Float_', 'Int_', 'Text_').
-}
module Foghorn.Data.Crsp.Msf where

import Foghorn.Base
import Prelude

-- | Generalized algebraic data type (GADT) of CRSP MSF variables.
data MsfV (i :: EconIndices) (a :: EconType) where
    -- | Price Alternate
    Altprc :: MsfV ('Panel 'Permno_ 'TradingMonthEnd_) 'Float_
    -- | Alternate Price Date
    Altprcdt :: MsfV ('Panel 'Permno_ 'TradingMonthEnd_) 'Float_
    -- | Ask
    Ask :: MsfV ('Panel 'Permno_ 'TradingMonthEnd_) 'Float_
    -- | Ask or High Price
    Askhi :: MsfV ('Panel 'Permno_ 'TradingMonthEnd_) 'Float_
    -- | Bid
    Bid :: MsfV ('Panel 'Permno_ 'TradingMonthEnd_) 'Float_
    -- | Bid or Low Price
    Bidlo :: MsfV ('Panel 'Permno_ 'TradingMonthEnd_) 'Float_
    -- | Cumulative Factor to Adjust Prices
    Cfacpr :: MsfV ('Panel 'Permno_ 'TradingMonthEnd_) 'Float_
    -- | Cumulative Factor to Adjust Shares/Vol
    Cfacshr :: MsfV ('Panel 'Permno_ 'TradingMonthEnd_) 'Float_
    -- | CUSIP Header
    Cusip :: MsfV ('Panel 'Permno_ 'TradingMonthEnd_) 'Text_
    -- | Date of Observation (DATE variable in CRSP)
    TradingMonthEnd :: MsfV ('Panel 'Permno_ 'TradingMonthEnd_) 'TradingMonthEnd_
    -- | Exchange Code Header (1: NYSE, 2: NYSE MKT, 3: NASDAQ, 4: Arca, 5: Bats)
    Hexcd :: MsfV ('Panel 'Permno_ 'TradingMonthEnd_) 'Int_
    -- | Standard Industrial Classification Code Header
    Hsiccd :: MsfV ('Panel 'Permno_ 'TradingMonthEnd_) 'Int_
    -- | Nasdaq Issue Number
    Issuno :: MsfV ('Panel 'Permno_ 'TradingMonthEnd_) 'Int_
    -- | PERMCO
    Permco :: MsfV ('Panel 'Permno_ 'TradingMonthEnd_) 'Int_
    -- | PERMNO
    Permno :: MsfV ('Panel 'Permno_ 'TradingMonthEnd_) 'Int_
    -- | Price or Bid/Ask Average
    Prc :: MsfV ('Panel 'Permno_ 'TradingMonthEnd_) 'Float_
    -- | Returns
    Ret :: MsfV ('Panel 'Permno_ 'TradingMonthEnd_) 'Float_
    -- | Returns without Dividends
    Retx :: MsfV ('Panel 'Permno_ 'TradingMonthEnd_) 'Float_
    -- | Shares Outstanding (in thousands)
    Shrout :: MsfV ('Panel 'Permno_ 'TradingMonthEnd_) 'Float_
    -- | Spread Between Bid and Ask
    Spread :: MsfV ('Panel 'Permno_ 'TradingMonthEnd_) 'Float_
    -- | Volume
    Vol :: MsfV ('Panel 'Permno_ 'TradingMonthEnd_) 'Float_

deriving instance Show (MsfV i a)
deriving instance Eq (MsfV i a)
deriving instance Ord (MsfV i a)
