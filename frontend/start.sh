#!/bin/bash
export NEAR_ENV=testnet
export BLOCKCHAIN_ENV=testnet
export RODITCONTRACTID=10101-cableguard-org.testnet

GREEN='\033[1;32m'
NC='\033[0m' # No Color

CONTRACT_DIRECTORY=../contract
DEV_ACCOUNT_FILE="${CONTRACT_DIRECTORY}/account.env"
echo $DEV_ACCOUNT_FILE
echo Should be the same as
echo $RODITCONTRACTID

start () {
  echo The app is starting!
env-cmd -f $DEV_ACCOUNT_FILE parcel index.html --cert certificate.pem --key private.pem -p 443 --open
}

alert () {
  echo "======================================================"
  echo "It looks like you forgot to deploy your contract"
  echo ">> Run ${GREEN}'npm run deploy'${NC} from the 'root' directory"
  echo "======================================================"
}

if [ -f "$DEV_ACCOUNT_FILE" ]; then
  start
else
  alert
fi
