#!/usr/bin/expect -f  
set user root  
set host 59.110.168.95 
set password Lqw35nasr457Esadq234  
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