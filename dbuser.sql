drop user adminlaundry cascade;
drop user userlaundry1 cascade;
drop user userlaundry2 cascade;

create user adminlaundry identified by adminlaundry account unlock;
create user userlaundry1 identified by userlaundry1 account unlock;
create user userlaundry2 identified by userlaundry2 account unlock;

grant dba to adminlaundry;

--masukkan table

create or replace public synonym ttransaksi for adminlaundry.transaksi;
create or replace public synonym tmember for adminlaundry.member;
create or replace public synonym thakakses for adminlaundry.hakakses;
create or replace public synonym tbarang for adminlaundry.barang;
create or replace public synonym tharga for adminlaundry.harga;
create or replace public synonym autogenkodetrans for adminlaundry.autogenkodetrans;

create role pegawai;
grant connect to pegawai;
grant select on ttransaksi to pegawai;
grant select on tmember to pegawai;
grant select on tharga to pegawai;
grant select on thakakses to pegawai;
grant select on tbarang to pegawai;
grant insert on ttransaksi to pegawai;
grant insert on tmember to pegawai;
grant update on ttransaksi to pegawai;

grant pegawai to userlaundry1;
grant pegawai to userlaundry2;

grant execute on autogenkodetrans to pegawai;