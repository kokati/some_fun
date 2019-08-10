#/bin/bash
print(){
clear
num=$1
len=`echo $1|wc -L`
first=${num:0:1}
echo -ne "\033[35;1;7m $first \033[0m"
for((i=1;i<$len;i++))
do
#echo -ne "\033[$[RANDOM%6+31];1;7m  ${num:$i:1} \033[0m"
echo -ne "\033[31;1m  ${num:$i:1} \033[0m"
done
}
a="abcdefghijklmnopqrstuvwxyz"
word=""
while :
do
#count=$[RANDOM%26]
#echo $count
b=${a:$[RANDOM%26]:1}
tmp=$word
word=${word}$b
#echo $word
print $word

read -n 1 -t 0.2 joke
tt=${word:0:1}
if [ $joke == $tt ];then
word=${word:1:-1}
fi
print $word
read -n 1 -t 0.2 joke
tt=${word:0:1}
if [ $joke == $tt ];then
word=${word:1:-1}
fi
done

