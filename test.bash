#!/bin/bash

#########
# TEST1 #
#########
echo 10 > $tmp-ans1
bash ./16745123.bash  100 10 > $tmp-out1 || exit 1
$tmp-ans1 -eq $tmp-out1 || exit 1

#########
# TEST2 #
#########
echo 6 > $tmp-ans2
bash ./16745123.bash  12 42 > $tmp-out2 || exit 1
$tmp-ans2 -eq $tmp-out2 || exit 1

#########
# TEST3 #
#########

echo 25 > $tmp-ans3
bash ./16745123.bash  325 200 > $tmp-out3 || exit 1
$tmp-ans3 -eq $tmp-out3 || exit 1

exit 0

