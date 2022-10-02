read -p "Masukkan angka " a

b=2
c=0
res=$((a%b))

if [ $res == $c ]
then
	for ((angka=a; angka>0; angka=angka-2))
	do
		let nilai=$angka-1
		echo $nilai
	done
else
	for ((angka=a; angka>0; angka=angka-2))
	do
		echo $angka
	done
fi
