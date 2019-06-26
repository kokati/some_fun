#!/bin/bash
#==========================================
clear
echo -e "\033[$[31+RANDOM%6]m 欢迎你玩GAME2048,加载中......"
sleep 0.3
clear
echo -e "\033[$[31+RANDOM%6]m  欢迎你玩GAME2048,加载中......"
sleep 0.3
clear
echo -e "\033[$[31+RANDOM%6]m   欢迎你玩GAME2048,加载中......"
sleep 0.3
clear
echo -e "\033[$[31+RANDOM%6]m    欢迎你玩GAME2048,加载中......"
sleep 0.3
clear
echo -e "\033[$[31+RANDOM%6]m     欢迎你玩GAME2048,加载中......"
sleep 0.3
clear
echo -e "\033[$[31+RANDOM%6]m      欢迎你玩GAME2048,加载中......"
sleep 0.3
clear
echo -e "\033[$[31+RANDOM%6]m       欢迎你玩GAME2048,加载中......"
sleep 0.3
clear
echo -e "\033[$[31+RANDOM%6]m        欢迎你玩GAME2048,加载中......"
sleep 0.3
clear
echo -e "\033[$[31+RANDOM%6]m         欢迎你玩GAME2048,加载中......"
sleep 0.3
clear
#定义输出的16个变量,初始值
num01=0
num02=0
num03=0
num04=0
num05=0
num06=0
num07=0
num08=0
num09=0
num10=0
num11=0
num12=0
num13=0
num14=0
num15=0
num16=0
#定义得分
score=0
#查找high_score文件,获取历史最高得分
if [ -f  high_score ];then
	high=`cat high_score`
else
	high=0
fi
#==========================================
#随机在空位生成一个2或者4,2与4的比例为4:1
insert(){
a=$[RANDOM%5]
if [ $a -eq 0 ];then
	b=4
else
    b=2
fi
#echo $b
while :
	do
		c=$[1+RANDOM%16]
    case $c in
1)
	if [ ${num01} -eq 0 ];then
	let num01=b
	let score+=b
	break
    fi;;

2)
	if [ ${num02} -eq 0 ];then
	let num02=b
	let score+=b
	break
    fi;;
3)
	if [ ${num03} -eq 0 ];then
	let num03=b
	let score+=b
	break
    fi;;
4)
	if [ ${num04} -eq 0 ];then
	let num04=b
	let score+=b
	break
    fi;;
5)
	if [ ${num05} -eq 0 ];then
	let num05=b
	let score+=b
	break
    fi;;
6)
	if [ ${num06} -eq 0 ];then
	let num06=b
	let score+=b
	break
    fi;;
7)
	if [ ${num07} -eq 0 ];then
	let num07=b
	let score+=b
	break
    fi;;
8)
	if [ ${num08} -eq 0 ];then
	let num08=b
	let score+=b
	break
    fi;;
9)
	if [ ${num09} -eq 0 ];then
	let num09=b
	let score+=b
	break
    fi;;
10)
	if [ ${num10} -eq 0 ];then
	let num10=b
	let score+=b
	break
    fi;;
11)
	if [ ${num11} -eq 0 ];then
	let num11=b
	let score+=b
	break
    fi;;
12)
	if [ ${num12} -eq 0 ];then
	let num12=b
	let score+=b
	break
    fi;;
13)
	if [ ${num13} -eq 0 ];then
	let num13=b
	let score+=b
	break
    fi;;
14)
	if [ ${num14} -eq 0 ];then
	let num14=b
	let score+=b
	break
    fi;;
15)
	if [ ${num15} -eq 0 ];then
	let num15=b
	let score+=b
	break
    fi;;
16)
	if [ ${num16} -eq 0 ];then
	let num16=b
	let score+=b
	break
    fi
esac
done
}
#==========================================

#_______________打印函数
function print {
	if [ $1 -eq 0 ];then
		echo -en "     \033[44m \033[0m"
	fi
	if [ $1 -eq 2 ];then
    	echo -en "\033[31;1;7m   2 \033[0m\033[44m \033[0m"
	fi
	if [ $1 -eq 4 ];then
    	echo -en "\033[30;1;42m   4 \033[0m\033[44m \033[0m"
	fi
	
	if [ $1 -eq 8 ];then
    	echo -en "\033[33;1;7m   8 \033[0m\033[44m \033[0m"
	fi
	if [ $1 -eq 16 ];then
    	echo -en "\033[31;1;40m  16 \033[0m\033[44m \033[0m"
	fi
	if [ $1 -eq 32 ];then
    	echo -en "\033[35;1;7m  32 \033[0m\033[44m \033[0m"
	fi
	if [ $1 -eq 64 ];then
    	echo -en "\033[36;1;7m  64 \033[0m\033[44m \033[0m"
	fi
	if [ $1 -eq 128 ];then
    	echo -en "\033[31;1;7m 128 \033[0m\033[44m \033[0m"
	fi
	if [ $1 -eq 256 ];then
    	echo -en "\033[30;1;42m 256 \033[0m\033[44m \033[0m"
	fi
	if [ $1 -eq 512 ];then
    	echo -en "\033[33;1;7m 512 \033[0m\033[44m \033[0m"
	fi
	if [ $1 -eq 1024 ];then
    	echo -en "\033[34;1;40m1024 \033[0m\033[44m \033[0m"
	fi
	if [ $1 -eq 2048 ];then
    	echo -en "\033[35;1;7m2048 \033[0m\033[44m \033[0m"
	fi
}
#*******************************************************
insert
insert
ui() {
echo -e "\033[42m           \033[0m\033[31m2048\033[0m\033[42m          \033[0m"
echo -e  "\033[44m                         \033[0m"
echo -ne "\033[44m \033[0m"
print $num01;print $num02;print $num03;print $num04; echo -ne  "\033[31m   历史纪录:$high\033[0m"
echo ''
echo -e  "\033[44m                         \033[0m"
echo -ne "\033[44m \033[0m"
print $num05;print $num06;print $num07;print $num08;  echo -ne  "\033[31m   得分:$score\033[0m"


echo ''
echo -e  "\033[44m                         \033[0m"
echo -ne "\033[44m \033[0m"
print $num09;print $num10;print $num11;print $num12;

echo ''
echo -e  "\033[44m                         \033[0m"
echo -ne "\033[44m \033[0m"
print $num13;print $num14;print $num15;print $num16;

echo ''
echo -e  "\033[44m                         \033[0m"
}
ui
#==================向左的操作函数==========

left(){
#==============================================================
for i in {1..4}
do
if [ $num01 -eq 0 ];then
    let num01=num02;let num02=num03;let num03=num04;let num04=0
fi

if [ $num02 -eq 0 ];then
    let num02=num03;let num03=num04;let num04=0
fi
if [ $num03 -eq 0 ];then
    let num03=num04;num04=0
fi

done
if [ $num01 -eq $num02 ];then
    let num01=2*num01;let num02=num03;let num03=num04;num04=0
    else
        if [ $num02 -eq $num03 ];then
            let num02=2*num03 ;let num03=num04;let num04=0
        else
            if [ $num03 -eq $num04 ];then
                let num03=2*num04;let num04=0
            fi
         fi

     fi

#==============================================================
for i in {1..4}
do
if [ $num05 -eq 0 ];then
    let num05=num06;let num06=num07;let num07=num08;let num08=0
fi

if [ $num06 -eq 0 ];then
    let num06=num07;let num07=num08;let num08=0
fi
if [ $num07 -eq 0 ];then
    let num07=num08;num08=0
fi

done
if [ $num05 -eq $num06 ];then
    let num05=2*num05;let num06=num07;let num07=num08;num08=0
    else
        if [ $num06 -eq $num07 ];then
            let num06=2*num07 ;let num07=num08;let num08=0
        else
            if [ $num07 -eq $num08 ];then
                let num07=2*num08;let num08=0
            fi
         fi

     fi

#==============================================================
for i in {1..4}
do
if [ $num09 -eq 0 ];then
    let num09=num10;let num10=num11;let num11=num12;let num12=0
fi

if [ $num10 -eq 0 ];then
    let num10=num11;let num11=num12;let num12=0
fi
if [ $num11 -eq 0 ];then
    let num11=num12;num12=0
fi

done
if [ $num09 -eq $num10 ];then
    let num09=2*num09;let num10=num11;let num11=num12;num12=0
    else
        if [ $num10 -eq $num11 ];then
            let num10=2*num11 ;let num11=num12;let num12=0
        else
            if [ $num11 -eq $num12 ];then
                let num11=2*num12;let num12=0
            fi
         fi

     fi

#==============================================================
for i in {1..4}
do
if [ $num13 -eq 0 ];then
    let num13=num14;let num14=num15;let num15=num16;let num16=0
fi

if [ $num14 -eq 0 ];then
    let num14=num15;let num15=num16;let num16=0
fi
if [ $num15 -eq 0 ];then
    let num15=num16;num16=0
fi

done
if [ $num13 -eq $num14 ];then
    let num13=2*num13;let num14=num15;let num15=num16;num16=0
    else
        if [ $num14 -eq $num15 ];then
            let num14=2*num15 ;let num15=num16;let num16=0
        else
            if [ $num15 -eq $num16 ];then
                let num15=2*num16;let num16=0
            fi
         fi

     fi

}

#===========向右的操作函数===========================
right(){
#==============================================================
for i in {1..4}
do
if [ $num04 -eq 0 ];then
    let num04=num03;let num03=num02;let num02=num01;let num01=0
fi

if [ $num03 -eq 0 ];then
    let num03=num02;let num02=num01;let num01=0
fi
if [ $num02 -eq 0 ];then
    let num02=num01;num01=0
fi

done
if [ $num04 -eq $num03 ];then
    let num04=2*num04;let num03=num02;let num02=num01;num01=0
    else
        if [ $num03 -eq $num02 ];then
            let num03=2*num02 ;let num02=num01;let num01=0
        else
            if [ $num02 -eq $num01 ];then
                let num02=2*num01;let num01=0
            fi
         fi

     fi

#==============================================================
for i in {1..4}
do
if [ $num08 -eq 0 ];then
    let num08=num07;let num07=num06;let num06=num05;let num05=0
fi

if [ $num07 -eq 0 ];then
    let num07=num06;let num06=num05;let num05=0
fi
if [ $num06 -eq 0 ];then
    let num06=num05;num05=0
fi

done
if [ $num08 -eq $num07 ];then
    let num08=2*num08;let num07=num06;let num06=num05;num05=0
    else
        if [ $num07 -eq $num06 ];then
            let num07=2*num06 ;let num06=num05;let num05=0
        else
            if [ $num06 -eq $num05 ];then
                let num06=2*num05;let num05=0
            fi
         fi

     fi

#==============================================================
for i in {1..4}
do
if [ $num12 -eq 0 ];then
    let num12=num11;let num11=num10;let num10=num09;let num09=0
fi

if [ $num11 -eq 0 ];then
    let num11=num10;let num10=num09;let num09=0
fi
if [ $num10 -eq 0 ];then
    let num10=num09;num09=0
fi

done
if [ $num12 -eq $num11 ];then
    let num12=2*num12;let num11=num10;let num10=num09;num09=0
    else
        if [ $num11 -eq $num10 ];then
            let num11=2*num10 ;let num10=num09;let num09=0
        else
            if [ $num10 -eq $num09 ];then
                let num10=2*num09;let num09=0
            fi
         fi

     fi

#==============================================================
for i in {1..4}
do
if [ $num16 -eq 0 ];then
    let num16=num15;let num15=num14;let num14=num13;let num13=0
fi

if [ $num15 -eq 0 ];then
    let num15=num14;let num14=num13;let num13=0
fi
if [ $num14 -eq 0 ];then
    let num14=num13;num13=0
fi

done
if [ $num16 -eq $num15 ];then
    let num16=2*num16;let num15=num14;let num14=num13;num13=0
    else
        if [ $num15 -eq $num14 ];then
            let num15=2*num14 ;let num14=num13;let num13=0
        else
            if [ $num14 -eq $num13 ];then
                let num14=2*num13;let num13=0
            fi
         fi

     fi

}
#================向上的操作=======================
up(){
#==============================================================
for i in {1..4}
do
if [ $num01 -eq 0 ];then
    let num01=num05;let num05=num09;let num09=num13;let num13=0
fi

if [ $num05 -eq 0 ];then
    let num05=num09;let num09=num13;let num13=0
fi
if [ $num09 -eq 0 ];then
    let num09=num13;num13=0
fi

done
if [ $num01 -eq $num05 ];then
    let num01=2*num01;let num05=num09;let num09=num13;num13=0
    else
        if [ $num05 -eq $num09 ];then
            let num05=2*num09 ;let num09=num13;let num13=0
        else
            if [ $num09 -eq $num13 ];then
                let num09=2*num13;let num13=0
            fi
         fi

     fi

#==============================================================
for i in {1..4}
do
if [ $num02 -eq 0 ];then
    let num02=num06;let num06=num10;let num10=num14;let num14=0
fi

if [ $num06 -eq 0 ];then
    let num06=num10;let num10=num14;let num14=0
fi
if [ $num10 -eq 0 ];then
    let num10=num14;num14=0
fi

done
if [ $num02 -eq $num06 ];then
    let num02=2*num02;let num06=num10;let num10=num14;num14=0
    else
        if [ $num06 -eq $num10 ];then
            let num06=2*num10 ;let num10=num14;let num14=0
        else
            if [ $num10 -eq $num14 ];then
                let num10=2*num14;let num14=0
            fi
         fi

     fi

#==============================================================
for i in {1..4}
do
if [ $num03 -eq 0 ];then
    let num03=num07;let num07=num11;let num11=num15;let num15=0
fi

if [ $num07 -eq 0 ];then
    let num07=num11;let num11=num15;let num15=0
fi
if [ $num11 -eq 0 ];then
    let num11=num15;num15=0
fi

done
if [ $num03 -eq $num07 ];then
    let num03=2*num03;let num07=num11;let num11=num15;num15=0
    else
        if [ $num07 -eq $num11 ];then
            let num07=2*num11 ;let num11=num15;let num15=0
        else
            if [ $num11 -eq $num15 ];then
                let num11=2*num15;let num15=0
            fi
         fi

     fi

#==============================================================
for i in {1..4}
do
if [ $num04 -eq 0 ];then
    let num04=num08;let num08=num12;let num12=num16;let num16=0
fi

if [ $num08 -eq 0 ];then
    let num08=num12;let num12=num16;let num16=0
fi
if [ $num12 -eq 0 ];then
    let num12=num16;num16=0
fi

done
if [ $num04 -eq $num08 ];then
    let num04=2*num04;let num08=num12;let num12=num16;num16=0
    else
        if [ $num08 -eq $num12 ];then
            let num08=2*num12 ;let num12=num16;let num16=0
        else
            if [ $num12 -eq $num16 ];then
                let num12=2*num16;let num16=0
            fi
         fi

     fi

}
#=========================向下的操作================
down(){
#==============================================================
for i in {1..4}
do
if [ $num13 -eq 0 ];then
    let num13=num09;let num09=num05;let num05=num01;let num01=0
fi

if [ $num09 -eq 0 ];then
    let num09=num05;let num05=num01;let num01=0
fi
if [ $num05 -eq 0 ];then
    let num05=num01;num01=0
fi

done
if [ $num13 -eq $num09 ];then
    let num13=2*num13;let num09=num05;let num05=num01;num01=0
    else
        if [ $num09 -eq $num05 ];then
            let num09=2*num05 ;let num05=num01;let num01=0
        else
            if [ $num05 -eq $num01 ];then
                let num05=2*num01;let num01=0
            fi
         fi

     fi

#==============================================================
for i in {1..4}
do
if [ $num14 -eq 0 ];then
    let num14=num10;let num10=num06;let num06=num02;let num02=0
fi

if [ $num10 -eq 0 ];then
    let num10=num06;let num06=num02;let num02=0
fi
if [ $num06 -eq 0 ];then
    let num06=num02;num02=0
fi

done
if [ $num14 -eq $num10 ];then
    let num14=2*num14;let num10=num06;let num06=num02;num02=0
    else
        if [ $num10 -eq $num06 ];then
            let num10=2*num06 ;let num06=num02;let num02=0
        else
            if [ $num06 -eq $num02 ];then
                let num06=2*num02;let num02=0
            fi
         fi

     fi

#==============================================================
for i in {1..4}
do
if [ $num15 -eq 0 ];then
    let num15=num11;let num11=num07;let num07=num03;let num03=0
fi

if [ $num11 -eq 0 ];then
    let num11=num07;let num07=num03;let num03=0
fi
if [ $num07 -eq 0 ];then
    let num07=num03;num03=0
fi

done
if [ $num15 -eq $num11 ];then
    let num15=2*num15;let num11=num07;let num07=num03;num03=0
    else
        if [ $num11 -eq $num07 ];then
            let num11=2*num07 ;let num07=num03;let num03=0
        else
            if [ $num07 -eq $num03 ];then
                let num07=2*num03;let num03=0
            fi
         fi

     fi

#==============================================================
for i in {1..4}
do
if [ $num16 -eq 0 ];then
    let num16=num12;let num12=num08;let num08=num04;let num04=0
fi

if [ $num12 -eq 0 ];then
    let num12=num08;let num08=num04;let num04=0
fi
if [ $num08 -eq 0 ];then
    let num08=num04;num04=0
fi
done
if [ $num16 -eq $num12 ];then
    let num16=2*num16;let num12=num08;let num08=num04;num04=0
    else
        if [ $num12 -eq $num08 ];then
            let num12=2*num08 ;let num08=num04;let num04=0
        else
            if [ $num08 -eq $num04 ];then
                let num08=2*num04;let num04=0
            fi
         fi

     fi

}

while :
do
     clear
    ui 
    let a1=num01;let a2=num02;let a3=num03;let a4=num04;let a5=num05
    let a6=num06;let a7=num07;let a8=num08;let a9=num09; let a10=num10
    let a11=num11;let a12=num12;let a12=num12; let a13=num13
    let a14=num14;let a15=num15;let a16=num16

    echo -e "\033[35ma-左 d-右 w-上 s-下\033[0m"
    echo -ne "\033[35m请输入你的操作:\033[0m"
	read  -n 1  op
    if [ $op == a ];then
        left
    fi
        
    if [ $op == d ];then
        right
    fi
    if [ $op == w ];then
        up
    fi
    if [ $op == s ];then
        down
    fi
   sleep 0.5
     if [ $num01 -ne $a1 -o $num02 -ne $a2 -o   $num03 -ne $a3 -o $num04 -ne $a4  -o $num05 -ne $a5 -o $num06 -ne $a6 -o $num07 -ne $a7 -o $num08 -ne $a8 -o $num09 -ne $a9 -o $num10 -ne $a10 -o $num11 -ne $a11 -o $num12 -ne $a12 -o $num13 -ne $a13 -o $num14 -ne $a14 -o $num15 -ne $a15 -o $num16 -ne $a16 ];then
     insert 
     clear 
     ui
    echo -e "\033[35ma-左 d-右 w-上 s-下\033[0m"
    echo -ne "\033[35m请输入你的操作:\033[0m"
    sleep 0.5
     fi

    if [ $num01 -ne 0 -a $num02 -ne 0 -a $num03 -ne 0 -a $num04 -ne 0 -a $num05 -ne 0 -a $num06 -ne 0 -a $num07 -ne 0 -a $num08 -ne 0 -a $num09 -ne 0 -a $num10 -ne 0 -a $num11 -ne 0 -a $num12 -ne 0 -a $num 13 -ne 0 -a $num14 -ne 0 -a $num15 -ne 0 -a $num16 -ne 0 -a $num01 -ne $num02 -a $num02 -ne $num03 -a $num03 -ne $num04 -a $num05 -ne $num06 -a $num06 -ne $num07 -a  $num07 -ne $num08 -a $num09 -ne $num10 -a $num10 -ne $num11 -a $num11 -ne $num12 -a $num13 -ne $num14 -a $num14 -ne $num15 -a $num15 -ne $num16 -a $num01 -ne $num05 -a $num05 -ne $num09 -a $num09 -ne $num13 -a $num02 -ne $num06 -a $num06 -ne $num10 -a $num10 -ne $num14 -a $num03 -ne $num07 -a $num07 -ne $num11 -a $num11 -ne $num15 -a $num04 -ne $num08 -a $num08 -ne $num12 -a $num12 -ne $num16 ];then
    echo ""
    echo "游戏结束"
    if [ $score -gt $high ];then
	echo "$score" > high_score
    fi
    exit
    fi
done







