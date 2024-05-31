#!/bin/bash

# deploy the contract
#near deploy --accountId $RODITCONTRACTID --wasmFile build/contract.wasm
near deploy $RODITCONTRACTID  --wasmFile build/contract.wasm
