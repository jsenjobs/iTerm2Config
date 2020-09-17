#!/usr/bin/expect -f
set user root
set host 188.131.176.150
set password MzTuLR5x
set timeout -1

spawn ssh -o ServerAliveInterval=60 $user@$host
# expect "*yes/no*"
# send "yes\r"
# expect "*assword:*"
# send "$password\r"
# interact

expect {
	"*yes/no*" {send "yes\r";exp_continue}
	"*assword:*" {send "$password\r"}
}
# expect "]#"
interact
expect eof