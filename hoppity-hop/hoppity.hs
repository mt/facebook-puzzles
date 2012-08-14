#!/usr/bin/env runhaskell

module Main( main ) where

import System.Environment( getArgs, getProgName )
import System.IO

hopValue :: Int -> String 
hopValue i 
    | i `mod` 15 == 0 = "Hop"
    | i `mod` 3  == 0 = "Hoppity"
    | i `mod` 5  == 0 = "Hophop"
    | otherwise       = ""

processInputFile :: String -> IO ()
processInputFile f = do 
    inputStr <- readFile f
    mapM_ putStrLn $ hops $ read inputStr 
    where hops n = filter (not . null) $ map hopValue [1..n]

showUsage :: IO ()
showUsage = getProgName >>=
            \name -> putStrLn ( "usage: " ++  name ++ " <input_file>" )

main :: IO ()
main = do
    args <- getArgs
    case args of 
        [f] -> processInputFile f
        _   -> showUsage

