.model small
.code
org 100h
start:
	jmp mulai
nama		db 13,10,'Nama Anda	:$'
hp		db 13,10,'No. Hp/Telp	:$'
kode		db 13,10,'Kode/No produk yang anda pilih :$'
lanjut	db 13,10,'LANJUT Tekan y untuk lanjut>>>>>>>>>$'
tampung_nama	db 30,?,30 dup(?)
tampung_kode	db 30,?,30 dup(?)
tampung_hp	db 30,?,30 dup(?)

a db 01
b db 02
c db 03
d db 04
e db 05
f db 06
g db 07
h db 08
i db 09
j dw 15

daftar	db 13,10,'+==========================================================+'
		db 13,10,'|		|Perlengkapan Outdoor|			   |'
		db 13,10,'+==========================================================+'
		db 13,10,'|No|Type		|Merek			|Harga	   |'
		db 13,10,'------------------------------------------------------------'
		db 13,10,'|01|Sepatu Gunung	|Eiger			|Rp.350.000|'
		db 13,10,'|02|Carrier		|Eiger			|Rp.800.000|'
		db 13,10,'|03|Jaket 		|Eiger			|Rp.500.000|'
		db 13,10,'|04|Nesting		|Eiger			|Rp.300.000|'
		db 13,10,'|05|Sleeping Bag	|Eiger			|Rp.200.000|'
daftar2	db 13,10,'------------------------------------------------------------'
		db 13,10,'|No|Type		|Merek			|Harga	   |'
		db 13,10,'------------------------------------------------------------'
		db 13,10,'|06|Sepatu Gunung	|Consina		|Rp.250.000|'
		db 13,10,'|07|Carrier		|Consina		|Rp.700.000|'
		db 13,10,'|08|Jaket 		|Consina		|Rp.400.000|'
		db 13,10,'|09|Nesting		|Consina		|Rp.275.000|'
		db 13,10,'|10|Sleeping Bag	|Consina		|Rp.210.000|'
		db 13,10,'+==========================================================+'
		db 13,10,'|Tentukan Pilihan Anda sesuai dengaan No/kode pada tabel   |'
		db 13,10,'+==========================================================+','$'

pilih_mtr	db 13,10,'Silahkan masukkan NO/kode yang anda pilih: $'
error		db 13,10,'KODE YANG ANDA MASUKKAN SALAH$'
succes	db 13,10,'Selamat Anda Berhasil$'

	mulai:
	mov ah,09h
	lea dx,nama
	int 21h
	mov ah,0ah
	lea dx,tampung_nama
	int 21h
	push dx 

	mov ah,09
	mov dx,offset daftar
	int 21h
	mov ah,09h
	mov dx,offset lanjut
	int 21h
	mov ah,01h
	int 21h
	cmp al,'y'

proses:
	mov ah,09h
	mov dx,offset pilih_mtr
	int 21h

	mov ah,1
	int 21h
	mov bh,al
	mov ah,1
	int 21h
	mov bl,al
	cmp bh,'0'
	cmp bl,'1'
	je hasil1

	cmp bh,'0'
	cmp bl,'2'
	je hasil2

	cmp bh,'0'
	cmp bl,'3'
	je hasil3

	cmp bh,'0'
	cmp bl,'4'
	je hasil4

	cmp bh,'0'
	cmp bl,'5'
	je hasil5

	cmp bh,'0'
	cmp bl,'6'
	je hasil6

	cmp bh,'0'
	cmp bl,'7'
	je hasil7

	cmp bh,'0'
	cmp bl,'8'
	je hasil8

	cmp bh,'0'
	cmp bl,'9'
	je hasil9

	cmp bh,'1'
	cmp bl,'0'
	je hasil10

	

;-------------------------------
hasil1:
	mov ah,09h
	lea dx,teks1
	int 21h
	int 20h

hasil2:
	mov ah,09h
	lea dx,teks2
	int 21h
	int 20h

hasil3:
	mov ah,09h
	lea dx,teks3
	int 21h
	int 20h

hasil4:
	mov ah,09h
	lea dx,teks4
	int 21h
	int 20h

hasil5:
	mov ah,09h
	lea dx,teks5
	int 21h
	int 20h

hasil6:
	mov ah,09h
	lea dx,teks6
	int 21h
	int 20h

hasil7:
	mov ah,09h
	lea dx,teks7
	int 21h
	int 20h

hasil8:
	mov ah,09h
	lea dx,teks8
	int 21h
	int 20h

hasil9:
	mov ah,09h
	lea dx,teks9
	int 21h
	int 20h

hasil10:
	mov ah,09h
	lea dx,teks10
	int 21h
	int 20h

;-------------------------------

teks1 db 13,10,'Anda memilih Sepatu Gunung'
	db 13,10,'Merek Eiger'
	db 13,10,'Total harga yang harus anda bayar :Rp.350,000'
	db 13,10,'Termikasih$'

teks2 db 13,10,'Anda memilih Carrier'
	db 13,10,'Merek Eiger'
	db 13,10,'Total harga yang harus anda bayar :Rp.800,000'
	db 13,10,'Termikasih$'

teks3 db 13,10,'Anda memilih Jaket'
	db 13,10,'Merek Eiger'
	db 13,10,'Total harga yang harus anda bayar :Rp.500,000'
	db 13,10,'Termikasih$'

teks4 db 13,10,'Anda memilih Nesting'
	db 13,10,'Merek Eiger'
	db 13,10,'Total harga yang harus anda bayar :Rp.300,000'
	db 13,10,'Termikasih$'

teks5 db 13,10,'Anda memilih Sleeping Bag'
	db 13,10,'Merek Eiger'
	db 13,10,'Total harga yang harus anda bayar :Rp.200,000'
	db 13,10,'Termikasih$'

teks6 db 13,10,'Anda memilih Sepatu Gunung'
	db 13,10,'Merek Consina'
	db 13,10,'Total harga yang harus anda bayar :Rp.250,000'
	db 13,10,'Termikasih$'

teks7 db 13,10,'Anda memilih Carrier'
	db 13,10,'Merek Consina'
	db 13,10,'Total harga yang harus anda bayar :Rp.700,000'
	db 13,10,'Termikasih$'

teks8 db 13,10,'Anda memilih Jaket'
	db 13,10,'Merek Consina'
	db 13,10,'Total harga yang harus anda bayar :Rp.400,000'
	db 13,10,'Termikasih$'

teks9 db 13,10,'Anda memilih Nesting'
	db 13,10,'Merek Consina'
	db 13,10,'Total harga yang harus anda bayar :Rp.275,000'
	db 13,10,'Termikasih$'

teks10 db 13,10,'Anda memilih Sleeping Bag'
	db 13,10,'Merek Consina'
	db 13,10,'Total harga yang harus anda bayar :Rp.210,000'
	db 13,10,'Termikasih$'

end start

