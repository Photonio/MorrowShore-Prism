source key
source fn/rm-old

echo $twitch_url

all(){
  docker run -it -p 1935:1935 --name prism -e TWITCH_URL="<twitch server>" -e TWITCH_KEY="<twitch key>" -e FACEBOOK_KEY="<facebook key>" -e YOUTUBE_KEY="<youtube key>" -e TROVO_KEY="<trovo key>" -e KICK_KEY="<kick key>" -e RTMP1_URL="<custom RTMP1 server>" -e RTMP1_KEY="<custom RTMP1 key>" -e RTMP2_URL="<custom RTMP2 server>" -e RTMP2_KEY="<custom RTMP2 key>" -e RTMP3_URL="<custom RTMP3 server>" -e RTMP3_KEY="<custom RTMP3 key>" prism
}

several(){
  docker run -it -p 1935:1935 --name prism -e TWITCH_URL="${twitch_url}" -e TWITCH_KEY="${twitch_key}" -e FACEBOOK_KEY="${facebook_key}" -e YOUTUBE_KEY="${youtube_key}" prism
}

try(){
  docker run -it -p 1935:1935 --name prism -e KICK_KEY="${kick_key}"
}

openPort(){
  firewall-cmd --add-port=1935/tcp
}

rmOld
openPort
#several
try
