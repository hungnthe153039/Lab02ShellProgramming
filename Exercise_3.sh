echo "What do you want to know? : \c"
read var

if [ $var = "day" ]
	then echo "Ngay: $(date +'%d')"
fi

if [ $var = "month" ]
	then echo "Thang: $(date +'%m')"
fi

if [ $var = "year" ]
		then echo "Nam: $(date +'%Y')"
fi

