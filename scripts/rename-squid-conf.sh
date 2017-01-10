#! /bin/bash
squidversion=`squid -v | grep "Version" | cut -d " " -f4`
if [[ $squidversion == 3.5* ]]; then
	cp /etc/squid/squid.conf.withpp /etc/squid/squid.conf
else
	cp /etc/squid/squid.conf.woutpp /etc/squid/squid.conf
fi
