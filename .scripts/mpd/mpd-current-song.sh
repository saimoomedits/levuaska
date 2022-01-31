#/bin/bash 


mpc status &> /dev/null
 
status=$?

if test $status -eq 1
then
	exit
else
        if $(mpc status | grep -oG paused &> /dev/null)
	then
		echo "()$(mpc status | head -1)" 
	else
		echo "$(mpc status | head -1)"
	fi

fi
