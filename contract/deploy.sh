#!/bin/bash

# deploy the contract
/usr/local/lib/node_modules/near-cli/bin/near deploy $RODITCONTRACTID build/contract.wasm
