#!/bin/sh
ssh -o ServerAliveInterval=60 rocketai@39.97.184.229

# #!/usr/bin/expect -f
# set user root
# set host 106.75.116.232
# set password 800bb->BP  
# set timeout -1

# spawn ssh $user@$host
# expect "*yes/no*"
# send "yes\r"
# expect "*assword:*"
# send "$password\r"
# interact

# expect {
# 	"*yes/no*" {send "yes\r";exp_continue}
# 	"*assword:*" {send "$password\r"}
# }
# expect "]#"
# interact
# expect eof
