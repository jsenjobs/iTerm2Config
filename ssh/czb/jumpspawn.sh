#!/usr/bin/expect -f
set salt [lindex $argv 0]
set filter [lindex $argv 1]
puts $filter
spawn ssh -p 52222 -o ServerAliveInterval=60 shenguoquan@jumpserver.czb365.com
expect {
	"*Opt*" {send "$filter\r"}
	"*MFA auth*" {send "$salt\r";exp_continue}
  
}
interact
expect eof