#!/bin/sh
# rememver to modify the COOKIE & NEXT_START_TRY_TIME

COOKIE="input cookie"
NEXT_START_TRY_TIME=1541642180

# check time
timestamp=`date +%s`
while [ $timestamp -le $NEXT_START_TRY_TIME ]
do
        timestamp=`date +%s`
        echo "wait 1 seconds" 
        sleep 1
done


while [ 1 ] 
do

# 250
echo "Try 250 ..."
D:\\curl\\bin\\curl -X GET "https://hd.c.mi.com/tw/eventapi/api/raffle/drawprize?tag=tw_supersalesday_page&present_id=897" -H "Cache-Control: no-cache" -H "Cookie: $COOKIE" -H "Origin: https://event.mi.com"  -H "Referer: https://event.mi.com/tw/sales2018/super-sales-day" &

# 100
echo "Try 100 ..."
D:\\curl\\bin\\curl -X GET "https://hd.c.mi.com/tw/eventapi/api/raffle/drawprize?tag=tw_supersalesday_page&present_id=896" -H "Cache-Control: no-cache" -H "Cookie: $COOKIE" -H "Origin: https://event.mi.com"  -H "Referer: https://event.mi.com/tw/sales2018/super-sales-day" &
wait

done