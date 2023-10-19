module Main where
import System.Environment (getArgs)
import Lang.Imp.Parser
import Lang.Imp.Ast
import Lang.Imp.Interpreter
import Data.List (intercalate)
import qualified Data.Map.Strict as M

main :: IO ()
main = do
    [fileName] <- getArgs
    content <- readFile fileName
    putStrLn "Parsed file:"
    print $ parseImp content