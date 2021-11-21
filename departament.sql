create table if not exists Managers (
	id serial primary key
);

create table if not exists Departaments (
	id serial primary key,
	title varchar(80) not null unique
);

create table if not exists Workers (
	id serial primary key,
	worker_name varchar(80) not null
);


alter table Managers add departament_id integer references Departaments(id);
alter table Managers add worker_id integer references Workers(id);

alter table Departaments add manager_id integer references Managers(id);
alter table Departaments add worker_id integer references Workers(id);

alter table Workers add manager_id integer references Managers(id);
alter table Workers add departament_id integer references Departaments(id);
