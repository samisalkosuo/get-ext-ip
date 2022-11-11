timestamp=$(date)
echo "Started $timestamp"
extip=$(curl -k https://icanhazip.com/ 2> /dev/null)

echo "External IP: $extip"
sleep 1000000d
