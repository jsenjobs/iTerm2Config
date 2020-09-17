# !/bin/sh
# ssh -p 52222 -o ServerAliveInterval=60 shenguoquan@101.200.155.6
# ssh -p 52222 -o ServerAliveInterval=60 shenguoquan@jumpserver.czb365.com
scPath=$(cd `dirname $0`; pwd)
salt=`node $scPath/jumper.js`
$scPath/jumpspawn.sh $salt $1