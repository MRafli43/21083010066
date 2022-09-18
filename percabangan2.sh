printf "Jajan kesukaanmu apa ?\n"
printf "Pentol ?\n"
printf "Batagor ?\n"
printf "Cireng ?\n"

read jajan

case "$jajan" in
	"Pentol")
		echo "Pentol buk mah wenak!"
		;;
	"Batagor")
		echo "Batagor masbud mantap!"
		;;
	"Cireng")
		echo "Cireng kantin mantul!"
        ;;
	*)
		echo "Makanan kesukaanmu gaenak wlekk"
		;;
	esac
