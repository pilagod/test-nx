#!/bin/bash

source ~/.bashrc

npx hardhat compile --no-typechain
npx hardhat typechain

if [ -d "./artifacts" ]; then
    rm -rf /out/artifacts
    mv ./artifacts /out
fi

if [ -d "./cache" ]; then
    rm -rf /out/cache
    mv ./cache /out
fi

if [ -d "./typechain-types" ]; then
    rm -rf /out/typechain-types
    mv ./typechain-types /out
fi
