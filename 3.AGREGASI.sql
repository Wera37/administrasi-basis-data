use db_pratikum;

-- fungsi agregasi 
-- ambil hasil dari nilai qty dari seluruh row pada tabel transaksi
select count(*) from tr_penjualan_dqlab;
select count(*) from ms_pelanggan_dqlab;

-- menghitung penjualan qty dan menghitung seluruh row
select sum(qty), count(*) from tr_penjualan_dqlab;

-- menghitung rata" qty, nilai max qty dan nilai min qty
select avg(qty), min(qty), max(qty) from tr_penjualan_dqlab;

-- menghitung nilai unik dari nama_produk di tabel tr_penjualan_dqlab
select count(distinct nama_produk), count(nama_produk) from tr_penjualan_dqlab;

-- group by
-- mengambil grouping nilai dari kolom nama_produk
select nama_produk from tr_penjualan_dqlab group by nama_produk;

-- mengambil grouping nilai nama_produk dan qty
select nama_produk, qty from tr_penjualan_dqlab group by nama_produk, qty;

-- mengambil jumlah qty dari grouping nama_produk pada seluruh row pada tr_penjualan
select nama_produk, sum(qty) from tr_penjualan_dqlab group by nama_produk;

-- mengambil jumlah qty dari hasil grouping pada nama_produk terhadap seluruh tabel urutan nilai terbesar
select nama_produk, sum(qty) from tr_penjualan_dqlab group by nama_produk order by sum(qty) desc;

-- mengambil qty > 2 dari hasil grouping nama produk terhadap seluruh row pada tabel transaksi 
select nama_produk, sum(qty) from tr_penjualan_dqlab group by nama_produk having sum(qty) > 2 order by sum(qty) desc;

-- latihan 1 
-- melihat daftar nama produk yang total jumlah produk terjual perkelompok nama produk adalah diatas 4
select nama_produk, sum(qty) from tr_penjualan_dqlab having sum(qty) >= 4 order by sum(qty);

-- melihat daftar nama produk yang total jumlah terjual perkelompok nnama produk sama dengan 9
select nama_produk, sum(qty) from tr_penjualan_dqlab having sum(qty) = 9 order by sum(qty);