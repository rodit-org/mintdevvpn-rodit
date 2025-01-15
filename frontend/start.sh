  GNU nano 7.2                                                                          /home/icarus32/cgforge/frontend/start.sh                                                                                   
#!/bin/bash

export NEAR_ENV=mainnet
export BLOCKCHAIN_ENV=mainnet
export RODITCONTRACTID=rodit-org.near

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
