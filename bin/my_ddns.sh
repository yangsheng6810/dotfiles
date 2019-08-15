#!/bin/sh

MY_IP=`dig +short myip.opendns.com @resolver1.opendns.com`
OUTPUT_FILENAME="${HOSTNAME}_ip"
OUTPUT_FILE="/tmp/${OUTPUT_FILENAME}"

echo "${MY_IP}" > "${OUTPUT_FILE}"
scp "${OUTPUT_FILE}" racks:"${OUTPUT_FILENAME}"
scp "${OUTPUT_FILE}" linode:"${OUTPUT_FILENAME}"
rm "${OUTPUT_FILE}"
