{-|
Module      : Foghorn.Data.Crsp.Dsf
Description : CRSP Daily Stock File (DSF) variable definitions for Foghorn DSL
Copyright   : (c) Rob Tumarkin, 2025
License     : Non-commercial (see LICENSE file)
Maintainer  : https://github.com/tumarkin
Stability   : experimental
Portability : portable

This module defines the variable set for the CRSP Daily Stock File (DSF),
represented as a GADT ('DsfV'). Each constructor corresponds to a named CRSP
variable and is indexed by an 'EconType' (e.g., 'Float_', 'Int_', 'Text_').
-}
module Foghorn.Data.Crsp.Dsf where

import Foghorn.Base
import Prelude

-- | Generalized algebraic data type (GADT) of CRSP DSF variables.
data DsfV (i :: EconIndices) (a :: EconType) where
    -- | Ask
    Ask :: DsfV ('Panel 'Permno_ 'TradingDate_) 'Float_
    -- | Ask or High Price
    Askhi :: DsfV ('Panel 'Permno_ 'TradingDate_) 'Float_
    -- | Bid
    Bid :: DsfV ('Panel 'Permno_ 'TradingDate_) 'Float_
    -- | Bid or Low Price
    Bidlo :: DsfV ('Panel 'Permno_ 'TradingDate_) 'Float_
    -- | Cumulative Factor to Adjust Prices
    Cfacpr :: DsfV ('Panel 'Permno_ 'TradingDate_) 'Float_
    -- | Cumulative Factor to Adjust Shares/Vol
    Cfacshr :: DsfV ('Panel 'Permno_ 'TradingDate_) 'Float_
    -- | CUSIP Header
    Cusip :: DsfV ('Panel 'Permno_ 'TradingDate_) 'Text_
    -- | Date of Observation
    TradingDate :: DsfV ('Panel 'Permno_ 'TradingDate_) 'TradingDate_
    -- | Exchange Code Header
    Hexcd :: DsfV ('Panel 'Permno_ 'TradingDate_) 'Int_
    -- | Standard Industrial Classification Code Header
    Hsiccd :: DsfV ('Panel 'Permno_ 'TradingDate_) 'Int_
    -- | Nasdaq Issue Number
    Issuno :: DsfV ('Panel 'Permno_ 'TradingDate_) 'Int_
    -- | Open price
    Openprc :: DsfV ('Panel 'Permno_ 'TradingDate_) 'Float_
    -- | PERMCO
    Permco :: DsfV ('Panel 'Permno_ 'TradingDate_) 'Int_
    -- | PERMNO
    Permno :: DsfV ('Panel 'Permno_ 'TradingDate_) 'Int_
    -- | Price or Bid/Ask Average
    Prc :: DsfV ('Panel 'Permno_ 'TradingDate_) 'Float_
    -- | Returns
    Ret :: DsfV ('Panel 'Permno_ 'TradingDate_) 'Float_
    -- | Returns without Dividends
    Retx :: DsfV ('Panel 'Permno_ 'TradingDate_) 'Float_
    -- | Shares Outstanding
    Shrout :: DsfV ('Panel 'Permno_ 'TradingDate_) 'Float_
    -- | Volume
    Vol :: DsfV ('Panel 'Permno_ 'TradingDate_) 'Float_

deriving instance Show (DsfV i a)
deriving instance Eq (DsfV i a)
deriving instance Ord (DsfV i a)
