#!/usr/bin/env runhaskell

module Main( main ) where

import System.Environment( getArgs, getProgName )
import System.IO

processInputFile :: String -> IO ()
processInputFile f = do 
    contents <- readFile f
    mapM_ putStrLn $ lines contents 

showUsage :: IO ()
showUsage = getProgName >>=
            \name -> putStrLn ( "usage: " ++  name ++ " <input_file>" )

main :: IO ()
main = do
    args <- getArgs
    case args of 
        [f] -> processInputFile f
        _   -> showUsage
