#! /bin/sh
p=`pwd`
ctags -R $p
find $p -name "*.[hc]" > cscope.files
cscope -bqk
rm -f cscope.files
