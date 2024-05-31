#!/bin/bash

# initilize the contract
near call $RODITCONTRACTID init '{"owner_id": "'$RODITCONTRACTID'"}' --accountId $RODITCONTRACTID
