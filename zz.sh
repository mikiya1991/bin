#!/bin/sh

enc()
{
	encname={$1%.*}
	tar jcvf tmp.tar.bz2 $1 &&  base64 -i tmp.tar.bz2 -o ${encname}.txt && rm -rf tmp.tar.bz2 $1
}



dec()
{
	base64 -Di $1 -o t.tar.bz2 && tar xvf t.tar.bz2 && rm t.tar.bz2
}



case $1 in
enc)
	enc $2
	;;
dec)
	dec $2
	;;
esac
