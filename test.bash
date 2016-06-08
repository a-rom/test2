#!/bin/bash

#########
# TEST1 #
#########
echo 10 > $tmpans1
bash ./16745123.bash  100 10 > $tmpout1 || exit 1
$tmpans1 == $tmpout1 || exit 1

#########
# TEST2 #
#########
echo 6 > $tmpans2
bash ./16745123.bash  12 42 > $tmpout2 || exit 1
$tmpans2 == $tmpout2 || exit 1

#########
# TEST3 #
#########

echo 25 > $tmpans3
bash ./16745123.bash  325 200 > $tmpout3 || exit 1
$tmpans3 == $tmpout3 || exit 1

exit 0

