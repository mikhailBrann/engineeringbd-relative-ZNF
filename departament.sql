create table if not exists Workers (
	id serial primary key,
	manager_id integer references Workers(id),
	worker_name varchar(80) not null
);

create table if not exists Departaments (
	id serial primary key,
	title varchar(90) not null unique,
	manager_id integer references Workers(id),
	worker_id integer references Workers(id)
);

alter table Workers add departament_id integer references Departaments(id);