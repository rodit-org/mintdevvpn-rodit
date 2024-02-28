#!/bin/sh

echo ">> Building contract"

near dev-deploy  --wasmFile build/contract.wasm
