#!/bin/bash

# Inisialisasi Var
a=43;
b=7;
distroLinux="Ubuntu 19.04 LTS";
let c=a%b;

# Output Printf
printf "OS : $distroLinux \n";
printf "$c \n";
printf '%.2f float \n' $a;
printf '%.1f float \n' $a;

