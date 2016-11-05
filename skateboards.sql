create database skateboards on (NAME=skateboards_db, FILENAME="Z:\Documents\dev\MS_SQL_SERVER\skateboards_db.mds");
-- use skateboards;
create table inventory( manufacturer varchar(50), model varchar(50), length decimal, width decimal, sku varchar(15), price smallmoney);
insert into inventory values( 'Almost', 'Coffin Cruiser', 31.25, 8.5, '1CALM0COFF85000', 92.00 );