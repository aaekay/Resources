#!/bin/bash
# path to interpretor [arguments]
echo "Hello $USER"
# Use -e option of echo command to enable interpretation of backslash escapes
echo -e "Today is \c ";date 
echo -e "Number of user login : \c" ; who | wc -l
echo "Calendar"
cal
vech="Car"
printf "%s\n" $vech
printf "%1s\n" $vech
printf "%1.1s\n" $vech
printf "%1.2s\n" $vech
printf "%1.3s\n" $vech
printf "%10.3s\n" $vech
printf "%10.1s\n" $vech
no=10
printf "%d\n" $no
big=5355765
printf "%e\n" $big
printf "%5.2e\n" $big
sales=54245.22
printf "%f\n" $sales
printf "%.2f\n" $sales
echo "Pizza bill \$22.5"
echo -e "\a Ding dong\a"
echo "CIFS path must be \\\\NT-Server-Name\\ShareName"
echo -e "Sr.no\t DVD (price) "
echo -e "1\t Spirited Away (INR.200)"
echo -e "2\t Dragon Ball Z (INR.300)"

exit 0