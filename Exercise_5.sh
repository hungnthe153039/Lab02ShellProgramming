op="y"
while [ $op = "y" ]
do
echo "Please enter file name: \c"
read file

if [ -d $file ]
	then
	    echo $file is a directory.
	    echo - List subdir and files in dir1:
	    echo `ls $file`
	    cd $file
	    echo "- Empty folders are: ($(find -empty -type d | wc -l))"
	    find . -type d -empty
	    cd $OLDPWD
	    echo "Hit <Enter> to Delete empty folder."
	    read enter
	    if [ "$enter" = "" ];
	    	then
	    		find $file -empty -type d -delete
	    		echo "Deleted empty folder"
	    fi
	    
	    
	    
else if [ -f $file ]
	then
	    echo $file is an ordinary file.
	    echo 3 last lines of case_demo’s content:
	    tail -n 3 $file;	    
	    
else
    echo $file does not exist, or it is neither an ordinary file not a directory.
fi
fi

printf "\nDo you want to continue(y/n)?"
read op
done
