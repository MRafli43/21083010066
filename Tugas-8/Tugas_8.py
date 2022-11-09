from os import getpid
from time import time, sleep
from multiprocessing import cpu_count, Pool, Process

def bilangan(i):
  a = (i+1) % 2
  if a == 0:
    print(i+1, " Genap - ID Proses", getpid())
  else:
    print(i+1, " Ganjil - ID Proses", getpid())
  sleep(1)

masukkan = int(input("Masukkan berapa pemrosesan yang ingin dilakukan : "))

print("\nSekuensial")
sekuensial_awal = time()

for i in range(masukkan):
    bilangan(i)

sekuensial_akhir = time()

print("\nMultiprocessing.Proccess")
kumpulan_proses = []

process_awal = time()

for i in range(masukkan):
    p = Process(target=bilangan, args=(i,))
    kumpulan_proses.append(p)
    p.start()

for i in kumpulan_proses:
    p.join()
    
process_akhir = time()

print("\nMultiprocessing.Pool")
pool_awal = time()

pool = Pool()
pool.map(bilangan, range(0,masukkan))
pool.close()

pool_akhir = time()

print("\nWaktu eksekusi sekuensial :", sekuensial_akhir - sekuensial_awal, "detik")
print("Waktu eksekusi multiprocessing.Process :", process_akhir - process_awal, "detik")
print("Waktu eksekusi multiprocessing.Pool :", pool_akhir - pool_awal, "detik")
