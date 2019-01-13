{-# LANGUAGE TemplateHaskell #-}

module Lib
    ( someFunc
    ) where

import qualified Data.ByteString.Char8 as SB
import Data.FileEmbed

someFunc :: IO ()
someFunc = SB.putStrLn $(embedFile "myfile.png")
