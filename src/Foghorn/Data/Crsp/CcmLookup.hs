{-|
Module      : Foghorn.Data.Crsp.CcmLookup
Description : CRSP/Compustat Merged (CCM) Link Table variable definitions for Foghorn DSL
Copyright   : (c) Rob Tumarkin, 2025
License     : Non-commercial (see LICENSE file)
Maintainer  : https://github.com/tumarkin
Stability   : experimental
Portability : portable

This module defines the variable set for the CRSP/Compustat Merged (CCM) Link
Table, represented as a GADT ('CcmLookupV'). Each constructor corresponds to
a named link-table variable and is indexed by an 'EconType' (e.g., 'Int_',
'Text_', 'Date_').
-}
module Foghorn.Data.Crsp.CcmLookup where

import Foghorn.Base
import Prelude

-- | Generalized algebraic data type (GADT) of CCM Link Table variables.
data CcmLookupV (i :: EconIndices) (a :: EconType) where
    -- | Standard and Poor's Identifier
    Gvkey :: CcmLookupV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | First Effective Date of Link
    Linkdt :: CcmLookupV ('Panel 'Gvkey_ 'Datadate_) 'Date_
    -- | Last Effective Date of Link
    Linkenddt :: CcmLookupV ('Panel 'Gvkey_ 'Datadate_) 'Date_
    -- | Historical CRSP PERMCO Link to COMPUSTAT Record
    Lpermco :: CcmLookupV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Historical CRSP PERMNO Link to COMPUSTAT Record
    Lpermno :: CcmLookupV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | CIK Number
    Cik :: CcmLookupV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | Company Name
    Conm :: CcmLookupV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | CUSIP
    Cusip :: CcmLookupV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | GIC Industries
    Gind :: CcmLookupV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | GIC Sub-Industries
    Gsubind :: CcmLookupV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | North American Industry Classification Code
    Naics :: CcmLookupV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Standard Industry Classification Code
    Sic4 :: CcmLookupV ('Panel 'Gvkey_ 'Datadate_) 'Sic4_
    -- | Ticker Symbol
    Tic :: CcmLookupV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | First Fiscal Year of Available Accounting Data
    Year1 :: CcmLookupV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Last Fiscal Year of Available Accounting Data
    Year2 :: CcmLookupV ('Panel 'Gvkey_ 'Datadate_) 'Int_

deriving instance Show (CcmLookupV i a)
deriving instance Eq (CcmLookupV i a)
deriving instance Ord (CcmLookupV i a)
