#!/bin/bash
num=$1

#a0=(1 1 1 0 1 1 1)
a0=(41 41 41 47 41 41 41)
#a1=(0 0 1 0 0 1 0)
a1=(47 47 41 47 47 41 47)
#a2=(1 0 1 1 1 0 1)
a2=(41 47 41 41 41 47 41)
#a3=(1 0 1 1 0 1 1)
a3=(41 47 41 41 47 41 41)
#a4=(0 1 1 1 0 1 0)
a4=(47 41 41 41 47 41 47)
#a5=(1 1 0 1 0 1 1)
a5=(41 41 47 41 47 41 41)
#a6=(1 1 0 1 1 1 1)
a6=(41 41 47 41 41 41 41)
#a7=(1 0 1 0 0 1 0)
a7=(41 47 41 47 47 41 47)
#a8=(1 1 1 1 1 1 1)
a8=(41 41 41 41 41 41 41)
#a9=(1 1 1 1 0 1 1)
a9=(41 41 41 41 47 41 41)
num_fun() {
    num3=$[num%10]
    num2=$[num%100/10]
    num1=$[num/100]
	case $num1 in
	0)
		for i in {0..9}
do
		s1[$i]=${a0[$i]}
		done
;;
	1)
		for i in {0..9}
do
		s1[$i]=${a1[$i]}
		done
;;
	2) 
		for i in {0..9}
do
		s1[$i]=${a2[$i]}
		done
;;
	3)
		for i in {0..9}
do
		s1[$i]=${a3[$i]}
		done
;;
	4)
		for i in {0..9}
do
		s1[$i]=${a4[$i]}
		done
;;
	5)
		for i in {0..9}
do
		s1[$i]=${a5[$i]}
		done
;;
	6)
		for i in {0..9}
do
		s1[$i]=${a6[$i]}
		done
;;
	7)
		for i in {0..9}
do
		s1[$i]=${a7[$i]}
		done
;;
	8)
		for i in {0..9}
do
		s1[$i]=${a8[$i]}
		done
;;
	9)	
		for i in {0..9}
do
		s1[$i]=${a9[$i]}
		done

	esac
	case $num2 in
	0)
		for i in {0..9}
do
		s2[$i]=${a0[$i]}
		done
;;
	1)
		for i in {0..9}
do
		s2[$i]=${a1[$i]}
		done
;;
	2) 
		for i in {0..9}
do
		s2[$i]=${a2[$i]}
		done
;;
	3)
		for i in {0..9}
do
		s2[$i]=${a3[$i]}
		done
;;
	4)
		for i in {0..9}
do
		s2[$i]=${a4[$i]}
		done
;;
	5)
		for i in {0..9}
do
		s2[$i]=${a5[$i]}
		done
;;
	6)
		for i in {0..9}
do
		s2[$i]=${a6[$i]}
		done
;;
	7)
		for i in {0..9}
do
		s2[$i]=${a7[$i]}
		done
;;
	8)
		for i in {0..9}
do
		s2[$i]=${a8[$i]}
		done
;;
	9)	
		for i in {0..9}
do
		s2[$i]=${a9[$i]}
		done

	esac
	case $num3 in
	0)
		for i in {0..9}
do
		s3[$i]=${a0[$i]}
		done
;;
	1)
		for i in {0..9}
do
		s3[$i]=${a1[$i]}
		done
;;
	2) 
		for i in {0..9}
do
		s3[$i]=${a2[$i]}
		done
;;
	3)
		for i in {0..9}
do
		s3[$i]=${a3[$i]}
		done
;;
	4)
		for i in {0..9}
do
		s3[$i]=${a4[$i]}
		done
;;
	5)
		for i in {0..9}
do
		s3[$i]=${a5[$i]}
		done
;;
	6)
		for i in {0..9}
do
		s3[$i]=${a6[$i]}
		done
;;
	7)
		for i in {0..9}
do
		s3[$i]=${a7[$i]}
		done
;;
	8)
		for i in {0..9}
do
		s3[$i]=${a8[$i]}
		done
;;
	9)	
		for i in {0..9}
do
		s3[$i]=${a9[$i]}
		done

	esac
}

num_fun
screen() {
#最上面的一行
	echo ""
	echo ""
	echo ""
	echo -n "    "
	echo -e "\033[${s1[0]}m        \033[0m    \033[${s2[0]}m        \033[0m    \033[${s3[0]}m        \033[0m"
	echo -n "    "
	echo -e "\033[${s1[1]}m  \033[0m    \033[${s1[2]}m  \033[0m    \033[${s2[1]}m  \033[0m    \033[${s2[2]}m  \033[0m    \033[${s3[1]}m  \033[0m    \033[${s3[2]}m  \033[0m" 
	echo -n "    "
	echo -e "\033[${s1[1]}m  \033[0m    \033[${s1[2]}m  \033[0m    \033[${s2[1]}m  \033[0m    \033[${s2[2]}m  \033[0m    \033[${s3[1]}m  \033[0m    \033[${s3[2]}m  \033[0m" 
	echo -n "    "
	echo -e "\033[${s1[1]}m  \033[0m    \033[${s1[2]}m  \033[0m    \033[${s2[1]}m  \033[0m    \033[${s2[2]}m  \033[0m    \033[${s3[1]}m  \033[0m    \033[${s3[2]}m  \033[0m" 
	echo -n "    "
	echo -e "\033[${s1[1]}m  \033[0m    \033[${s1[2]}m  \033[0m    \033[${s2[1]}m  \033[0m    \033[${s2[2]}m  \033[0m    \033[${s3[1]}m  \033[0m    \033[${s3[2]}m  \033[0m" 
	echo -n "    "
#中间的一行
	echo -e "\033[${s1[3]}m        \033[0m    \033[${s2[3]}m        \033[0m    \033[${s3[3]}m        \033[0m"
	echo -n "    "
	echo -e "\033[${s1[4]}m  \033[0m    \033[${s1[5]}m  \033[0m    \033[${s2[4]}m  \033[0m    \033[${s2[5]}m  \033[0m    \033[${s3[4]}m  \033[0m    \033[${s3[5]}m  \033[0m" 
	echo -n "    "
	echo -e "\033[${s1[4]}m  \033[0m    \033[${s1[5]}m  \033[0m    \033[${s2[4]}m  \033[0m    \033[${s2[5]}m  \033[0m    \033[${s3[4]}m  \033[0m    \033[${s3[5]}m  \033[0m" 
	echo -n "    "
	echo -e "\033[${s1[4]}m  \033[0m    \033[${s1[5]}m  \033[0m    \033[${s2[4]}m  \033[0m    \033[${s2[5]}m  \033[0m    \033[${s3[4]}m  \033[0m    \033[${s3[5]}m  \033[0m" 
	echo -n "    "
	echo -e "\033[${s1[4]}m  \033[0m    \033[${s1[5]}m  \033[0m    \033[${s2[4]}m  \033[0m    \033[${s2[5]}m  \033[0m    \033[${s3[4]}m  \033[0m    \033[${s3[5]}m  \033[0m" 
	echo -n "    "
#最后的一行
	echo -e "\033[${s1[6]}m        \033[0m    \033[${s2[6]}m        \033[0m    \033[${s3[6]}m        \033[0m"
    time=`date "+%T"`
	echo ""
	
	echo -e "    \033[1;35;7m $time \033[0m"
}
timea=`date "+%s"`
numcopy=$num
while [ $num -ge 0 ]
do
	clear
	num_fun
	screen
	sleep 0.5
	timeb=`date "+%s"`
	let num=numcopy+timea-timeb
done
