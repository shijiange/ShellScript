#!/bin/bash
#
#********************************************************************
#Author:            shijian
#URL:               http://www.shijianphp.com
#Description:       The test script
#Copyright (C):     2019 All rights reserved
#********************************************************************

ZABBIX_SERVER=zabbix.shijianphp.com
TOKEN=$(./zabbix-api-token.sh| awk -F'"' '{print $8}')

curl -s -XPOST -H "Content-Type: application/json-rpc" -d '
{
"jsonrpc": "2.0",
"method": "host.delete",
"params": ["10437"],
"id": 1,
"auth": "'$TOKEN'"
}' http://${ZABBIX_SERVER}/zabbix/api_jsonrpc.php
