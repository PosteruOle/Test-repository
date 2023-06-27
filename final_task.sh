#!/bin/bash


echo "----------------------------------"
echo "Preparing for execution!"

for arg in "$@"
do
if [[ "$arg" = "-c" ]]
then
echo -e "You have entered a \"-c\" option!"
echo -e "Now we will run clear.sh bash script! Watch!"
bash clear.sh
fi
done

mkdir test_dir
touch test_dir/hello.c
string="#include <stdio.h>\n
\n
int main()\n
{\n
\n
   printf(\"Hello there! Seize the day!\");\n
\n
   return 0;\n
}"
echo -e $string >> test_dir/hello.c

cd test_dir
gcc -g hello.c
cd .. 


objdump -j .text --disassemble=main test_dir/a.out >> test_dir/test-text.txt
readelf -wi test_dir/a.out >> test_dir/test-debug.txt


echo "Execution has finished successfully!"
echo "----------------------------------"
