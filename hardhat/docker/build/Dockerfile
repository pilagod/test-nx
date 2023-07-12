FROM ubuntu:22.04 

# Enable bashrc for non-interactive bash
RUN sed -i 's/\[ -z "$PS1" \] && return/#\ &/' ~/.bashrc

# Use bash
SHELL ["/bin/bash", "-c"]

# Install tools
RUN apt update -y && \
    apt install curl git -y

# Install Foundry
RUN curl -L https://foundry.paradigm.xyz | bash && \
    source ~/.bashrc && \
    foundryup

# Install NodeJS
RUN curl -s https://deb.nodesource.com/setup_16.x | bash && \
    apt install nodejs -y

# Install NodeJS libraries
RUN mkdir node && \
    cd node && \
    npm init --yes && \
    npm install --save-dev hardhat @nomicfoundation/hardhat-foundry typechain @typechain/hardhat@6.1.6 @typechain/ethers-v5

COPY ./foundry /foundry
COPY ./hardhat/docker/build/entry.sh /foundry
COPY ./hardhat/docker/build/hardhat.config.js /foundry

RUN mv /node/node_modules /foundry
WORKDIR /foundry

CMD ["./entry.sh"]
