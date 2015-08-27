vim $1.c
gcc -o $1.b $1.c
chmod 100 $1.b
./$1.b

