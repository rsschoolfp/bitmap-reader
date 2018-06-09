module Lib
    ( someFunc
    ) where

import Rainbow (putChunkLn, chunk, fore, blue)

someFunc :: IO ()
someFunc = putChunkLn $ fore blue $ chunk "Some blue text"
