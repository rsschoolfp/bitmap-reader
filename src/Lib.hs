module Lib
    ( printPalette
    ) where

import Rainbow (putChunk, chunk, (&), back, color256)

palette256 = concatMap (\x -> map colorize_chunk x ++ chunk_return) $ map (\i -> map (\j -> 16 * i + j) range) range
  where range          = [0..15]
        colorize_chunk = (chunk " " &) . back . color256
        chunk_return   = [chunk "\n"]


printPalette :: IO ()
printPalette = mapM_ putChunk palette256
