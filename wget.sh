URL="http://localhost:8000/"

function Loader() {
(
while read -r data
do
cat <<EOF
XXX
$(echo "$data" | stdbuf -o0 awk '{ print $7 }' | tr -d '%')
wget stdout raw -> $(echo "$data")
Download speed -> $(echo "$data" | stdbuf -o0 awk '{ print $8 }') Downloaded data -> $(echo "$data" | stdbuf -o0 awk '{ print $1 }')
Estimated time for end -> $(echo "$data" | stdbuf -o0 awk '{ print $9 }') 
XXX
EOF
done
) |
dialog --title "Download in progress," "$@" --gauge "Xtr" 10 55
}
wget "$URL" 2>&1 | Loader

