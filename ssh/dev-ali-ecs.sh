#!/usr/bin/expect -f  
set user root  
set host 119.23.238.170
set password Szxz9527.+*  
set timeout -1  

spawn ssh $user@$host
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