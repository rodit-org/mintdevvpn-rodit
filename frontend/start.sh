#!/bin/bash

GREEN='\033[1;32m'
NC='\033[0m' # No Color

CONTRACT_DIRECTORY=../contract

start () {
  echo The app is starting!
env-cmd -f $RODITCONTRACTID parcel index.html --cert certificate.pem --key private.pem -p 443 --open
}

alert () {
  echo "======================================================"
  echo "It looks like you forgot to deploy your contract"
  echo ">> Run ${GREEN}'npm run deploy'${NC} from the 'root' directory"
  echo "======================================================"
}
