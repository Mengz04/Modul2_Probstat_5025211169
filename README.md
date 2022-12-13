# Modul2_Probstat_5025211169
## Soal 1
Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴 
![image](https://user-images.githubusercontent.com/78022264/207190218-c52c0712-21e2-4af7-af60-65d5f61c2264.png)
Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen  dari responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah melakukan aktivitas 𝐴 sebanyak 70.

### poin a
Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas
Tahap pertama adalah dengan mencari selisih dari data yang berpasangan. Data dari tabel tersebut dimasukkan dalam sebuah vektor x dan y yang nantinya akan dicari selisihnya dan dicari standar deviasinya.
```
x <- c(78, 75, 67, 77, 70, 72, 78, 74, 77)
y <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)

delta <- y-x
sd(delta)
```
