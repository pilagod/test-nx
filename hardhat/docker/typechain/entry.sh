#!/bin/bash

source ~/.bashrc
npx hardhat typechain
if [ -d "/out/typechain-types" ]; then
    rm -rf /out/typechain-types
fi
mv ./typechain-types /out
