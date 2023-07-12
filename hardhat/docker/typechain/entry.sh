#!/bin/bash

source ~/.bashrc
npx hardhat typechain

if [ -d "/out/artifacts" ]; then
    rm -rf /out/artifacts
fi
mv ./artifacts /out

if [ -d "/out/cache" ]; then
    rm -rf /out/cache
fi
mv ./cache /out

if [ -d "/out/typechain-types" ]; then
    rm -rf /out/typechain-types
fi
mv ./typechain-types /out
