i="1"
while [ $i ]; do 
    date +%y%m%dT%H%M%S
    ping -c 10 nodepnnl
    sleep 100 
done 
   

