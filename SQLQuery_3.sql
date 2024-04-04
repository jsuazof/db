create table CATEGORIA(
idCategoria int not null,
nombre varchar(15),
descripcion varchar(50)

);

alter table CATEGORIA
add primary key(idCategoria);

create table PROVEEDOR(
rut varchar(15) not null,
razonSocial varchar(30),
direccion varchar(20),
comuna varchar(15),
ciudad varchar(15),
telefono varchar(20),
paginaWeb varchar(15),
primary key(rut)


);
/*


*/
create table PRODUCTO(
idProducto int not null,
nombre varchar(15),
precio int,
stock  int,
nombreProveedor varchar(15),
SKU varchar(25),
primary key(idProducto)
);

-- se agrega el campo nombreProveedor a Proveedor
alter table PROVEEDOR
add nombreProveedor varchar(15);
-- drop sirve para quitar campo de una tabla
alter table PRODUCTO
drop nombreProveedor;

create table CLIENTE
(
 rut varchar(15) not null,
 nombres varchar(20),
 primerApellido varchar(10),
 segundoApellido varchar(10),
 nacionalidad varchar(50),
 calle varchar(40),
 numero varchar(6),
 referencia varchar(50),
 comuna varchar(15),
 ciudad varchar(15),
 telefono1 varchar(20),
 telefono2 varchar(20),
 telefono3 varchar(20),
 email varchar(50),
 primary key(rut)
);

drop table CLIENTE;-- elimina tabla

alter table CLIENTE
change telefono telefono3 varchar(20);

