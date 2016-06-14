#!/bin/bash

tmp=/tmp/$$

ERROR_EXIT () {
    rm -f $tmp-*
    exit 1
}

#########
# TEST1 #
#########
echo 10 > $tmp-ans1
bash ./16745123.bash  100 10 > $tmp-out1 || ERROR_EXIT "TEST1-1"
diff $tmp-ans1 $tmp-out1 || ERROR_EXIT "TEST1-2"

##########
# TEST2 #
##########
echo 6 > $tmp-ans2
bash ./16745123.bash  12 42 > $tmp-out2 || ERROR_EXIT "TEST2-1"
diff $tmp-ans2 $tmp-out2 || ERROR_EXIT "TEST2-2"

#########
# TEST3 #
#########

echo 25 > $tmp-ans3
bash ./16745123.bash  325 200 > $tmp-out3 || ERROR_EXIT "TEST3-1"
diff $tmp-ans3  $tmp-out3 || ERROR_EXIT "TEST3-2"

rm -f $tmp-*
exit 0

                                                   33,1         末尾
