use db_pratikum;
-- latihan 1
select kode_produk, nama_produk from ms_produk_dqlab;
select * from tr_penjualan_dqlab;

-- prefix - menggunakan nama tabel
select ms_produk_dqlab.nama_produk from ms_produk_dqlab;
select ms_produk_dqlab.kode_produk from ms_produk_dqlab;
select ms_produk_dqlab.kategori_produk from ms_produk_dqlab;
select ms_produk_dqlab.harga from ms_produk_dqlab;
select ms_produk_dqlab.nama_produk, ms_produk_dqlab.harga from ms_produk_dqlab;

 -- prefix - menggunakan nama database
 select db_pratikum.ms_produk_dqlab.nama_produk from ms_produk_dqlab;

 -- alias - menggunakan nama kolom
 select nama_produk as np from ms_produk_dqlab;
 
 -- menggunakan alias dan prefix
 -- menggunakan prefix nama table
 select ms_produk_dqlab.nama_produk, ms_produk_dqlab.harga from ms_produk_dqlab;
 
 -- prefix dari nama database dan table
 select db_pratikum.ms_produk_dqlab
 
 