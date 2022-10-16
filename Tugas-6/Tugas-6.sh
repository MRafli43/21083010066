#!/bin/bash

declare -a IPS

read -p "Semester berapa anda? " semester

i=0
while [ $i -le $((semester-1)) ]
do
	read -p "Masukkan nilai semester ke $((i+1)) " nilai;
	IPS[$i]=$nilai
	let i=$i+1
	let jumlah=jumlah+$nilai
done

let IPK=$jumlah/$semester
echo "IPS Mahasiswa = $jumlah/$semester"
echo "IPK Mahasiswa = $IPK"
