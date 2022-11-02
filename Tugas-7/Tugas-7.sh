#!/bin/bash 

luas(){
	panjang=$1
	lebar=$2
	let luas=$panjang*$lebar
	echo -e "Luas persegi = $luas"
}

echo "Masukkan panjang"
read p
echo "Masukkan lebar"
read l

luas $p $l
