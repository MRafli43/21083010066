angka=(1, 2, 3, 4, 5, 6, 7, 8, 9)

echo "Siapa namamu?"
read nama
echo -e "\nHai $nama!\nSelamat datang di permainanku"

echo "Silahkan pilih angkamu"

let angkamu=$RANDOM%9
let angkaku=$RANDOM%9

echo "Aku mendapat ${angka[$angkamu]} !"
echo "Kamu mendapat ${angka[$angkaku]} !"

 if [ $angkamu == $angkaku ]
 then
 echo "Sial sedikit lagi"
 elif [ $angkamu -gt $angkaku ]
 then
 echo "HAHAHA Aku memang hebat dalam permainan ini"
 elif [ $angkamu -lt $angkaku ]
 then
 echo "Arghhh Awas kau ya"
 else
 echo "Tidak ada kondisi yang memenuhi"
 fi
