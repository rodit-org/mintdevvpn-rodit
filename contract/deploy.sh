#!/bin/bash

# deploy the contract
#near deploy --accountId $NFTCONTRACTID --wasmFile build/contract.wasm
near deploy $NFTCONTRACTID  --wasmFile build/contract.wasm
