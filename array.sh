#!/bin/bash

# deklarasi array
distroLinux=("Mangga", "Apel", "Durian", "Melon")

#random list
let pilih=$RANDOM%5

#eksekusi
echo "Saya Memilih List $pilih, ${distroLinux[pilih]} !"
