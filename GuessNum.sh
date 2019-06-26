#!/bin/bash
clear
echo -e  "\033[34;42m===========================================\033[0m"
echo -e "\033[34;42m||\033[0m \033[35m           ** 猜数字游戏**\033[0m"
echo -e "\033[34;42m||\033[0m \033[31m游戏规则:猜四个0-9的数字,四个数字各不相同\033[0m"
x=$[RANDOM%10]

y=$[RANDOM%10]

while [ $x -eq $y ]
do
	y=$[RANDOM%10]
done

z=$[RANDOM%10]

while [ $x -eq $y -o $y -eq $z ]
do
  z=$[RANDOM%10]
done

a=$[RANDOM%10]

while [ $a -eq $x -o $a -eq $y -o $a -eq $z ]
do
	a=$[RANDOM%10]
done
#echo  "$x $y $z $a"
num=10
while [ $num -gt 0 ]
do
   num01=0
   num02=0
   echo -e "\033[34;42m||\033[0m \c"
   read -p  "请输入你的猜测(注意数字间的空格):" first second third four
#   echo -e " \033[34;42m||\033[0m "
#   echo "$first $second $third $four" 
   if [ $x -eq $first ];then
	let num01++
fi
   if [ $y -eq $second ];then
	let num01++
fi
   if [ $z -eq $third ];then
	let num01++
fi
   if [ $a -eq $four ];then
	let num01++
fi

if [ $num01 -eq 4 ];then
	echo -e  "\033[34;42m||\033[0m 恭喜你答对了"
    exit
fi

#   echo "\033[34;42m||\033[0m 你有 $num01 个数字完全正确"
check=0
for i in {0..9}
do  
    check1=0
	for j in $first $second $third $four
		do
         	if [ $j -eq $i ];then
			let check1++
			fi
        done
	check2=0
	for k in $x $y $z $a
		do
			if [ $k -eq $i ];then
			let check2++
			fi
         done
	if [ $check1 -ge $check2 ];then
	let check+=check2
    else
    let check+=check1
	fi
done
    echo -e  "\033[34;42m||\033[0m 你猜对了 $check 个数字,$num01个位置正确"
    let num--
    echo -e  "\033[34;42m||\033[0m \033[31m你还有$num次机会\033[0m"
    echo -e  "\033[34;42m===========================================\033[0m"
done

