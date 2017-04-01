#!/bin/sh
while read address; do
    echo "sending to $address..."
    printf "$(cat gpl31_change_notice.txt)" "$address" | msmtp -a default "$address"
done < email_addresses.txt
