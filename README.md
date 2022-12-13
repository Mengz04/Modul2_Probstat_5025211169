# Modul2_Probstat_5025211169
## Nomor 1
Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴 

![image](https://user-images.githubusercontent.com/78022264/207190218-c52c0712-21e2-4af7-af60-65d5f61c2264.png)

Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen  dari responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah melakukan aktivitas 𝐴 sebanyak 70.

### poin a
*Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas*

Penyelesaian dengan data dari tabel tersebut dimasukkan dalam sebuah vektor x dan y yang nantinya akan dicari selisihnya dan dicari standar deviasinya.
```
x <- c(78, 75, 67, 77, 70, 72, 78, 74, 77)
y <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)

delta <- y-x
sd(delta)
```
Hasil yang didapat adalah sebagai berikut:

![image](https://user-images.githubusercontent.com/78022264/207193061-c51c9ab0-0e36-4ba0-98ab-b0f2b7d4a9f5.png)

### poin b
*Carilah nilai t (p-value)*

Pasangan data x dan y dari poin sebelumnya dicari p-value nya dengan memanfaatkan fungsi t.test() dengan parameter pasangan data x dan y
```
t.test(y, x, paired = TRUE)
```
Hasil yang didapat adalah sebagai berikut:

![image](https://user-images.githubusercontent.com/78022264/207196427-795e843b-baa0-405c-ac23-0ae26df9167b.png)

### poin c
*Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”*

P-value yang didapat dari poin b adalah 6.003e-05, nilai tersebut lebih kecil dibanding dengan nilai 𝛼 = 5%. Maka keputusan yang diambil adalah tolak H0 dan terima H1 karena perbedaan mean populasi x dan y tidak sama dengan nol pada tingkat signifikansi 5%.

## Nomor 2
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan library seperti referensi pada modul).

### poin a
*Apakah Anda setuju dengan klaim tersebut?*

Berdasarkan nilai klaim rata-rata, standar deviasi, serta rata-rata sample yang diberikan, kemungkinan besar klaim tersebut valid. Bila diasumsikan confident levelnya adalah 95%, rentang yang rata-rata populasi berada pada 22726 hingga 24273 dengan bukti sebagai berikut:
```
nx <- 100
meanx <- 23500
sdx <- 3900
tsum.test(meanx, sdx, nx, var.equal = TRUE, mu = 20000)
```
Hasil yang didapat adalah sebagai berikut:

![image](https://user-images.githubusercontent.com/78022264/207207978-452cc360-484d-49fc-852d-3f4d04cf1a1b.png)

### poin b
*Jelaskan maksud dari output yang dihasilkan!*

Berdasarkan confidence interval yang didapat dengan asumsi tingkat signifikansi 𝛼 = 5%, klaim rata-rata *"lebih dari 20000"* masih masuk pada confidence interval sehingga **klaim diterima**. Kode program pembuktian identik dengan penjelasan pada poin a menggunakan fungsi tsum.test() dengan parameter yang sudah diinputkan pada poin sebelumnya
```
tsum.test(meanx, sdx, nx, var.equal = TRUE, mu = 20000)
```
Hasil yang didapat adalah sebagai berikut:

![image](https://user-images.githubusercontent.com/78022264/207207991-026149de-e5ba-41f4-ace8-31566014af6a.png)

### poin c
*Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!*


