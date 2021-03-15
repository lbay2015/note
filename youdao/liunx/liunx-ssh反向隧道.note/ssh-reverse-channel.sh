#!/bin/sh

echo "----------------------------------------------------------------"
echo "+          localhost ssh reverse channel setting....           +"

echo -n "set localhost server mapping port :"
read locHosMapPort

echo -n "set remote server reverse ssh mapping port :"
read remMapPort

echo -n "set remote server login address:"
read remAddr

echo -n "set remote server login port:"
read remPort

echo -n "set remote server login user:"
read remLogUser

ssh -fgNR $remMapPort:127.0.0.1:$locHosMapPort -p $remPort $remLogUser@$remAddr
echo "+          setting the end. please keep the ssh connection     +"
echo "+          test address: $remAddr  port:$remMapPort               +"
echo "----------------------------------------------------------------"