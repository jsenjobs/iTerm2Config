#!/usr/bin/expect -f
set user 17682490309
set host 47.93.15.209
set password Czb@2019sgqj3
set timeout -1

spawn ssh -p 60022 -o ServerAliveInterval=60 $user@$host
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