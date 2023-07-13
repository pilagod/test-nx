#!/bin/bash

source ~/.bashrc

npx hardhat compile --no-typechain
npx hardhat typechain

rm -rf /out/artifacts /out/cache /out/typechain-types

mv ./artifacts ./typechain-types /out
if [ -d "./cache" ]; then
    mv ./cache /out
fi
