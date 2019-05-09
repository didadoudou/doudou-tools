ra="run-as"
l=`pm list packages -f | sed -e 's/.*=//' | sort`

for t in $l;do `run-as $t ls`;result=$?;if [[ $result == 127 ]];then echo 'idebuggable:'$t;fi;done