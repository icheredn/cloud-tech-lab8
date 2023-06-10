DATE=$(date)
MEM=$(free -h)

echo "Data: $DATE" > /logi/info.log
echo "Info o dostepnej pamieci: " >> /logi/info.log
echo "$MEM" >> /logi/info.log