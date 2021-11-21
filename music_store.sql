create table if not exists Tracks (
	id serial primary key,
	title varchar(100) not null,
	track_length varchar(9) not null
);

create table if not exists Albums (
	id serial primary key,
	title varchar(100) not null
);

create table if not exists Authors (
	id serial primary key,
	author_name varchar(100) not null	
);

create table if not exists Genre (
	id serial primary key,
	title varchar(100) not null
);

create table if not exists Collections (
	id serial primary key,
	title varchar(100) not null	
);


alter table Tracks add genre_id integer references Genre(id);
alter table Tracks add album_id integer references Albums(id);
alter table Tracks add collection_id integer references Collections(id);

alter table Albums add author_id integer references Authors(id);
alter table Albums add genre_id integer references Genre(id);

alter table Authors add album_id integer references Albums(id);
alter table Authors add genre_id integer references Genre(id);

alter table Genre add author_id integer references Authors(id);
alter table Genre add album_id integer references Albums(id);

alter table Collections add track_id integer references Tracks(id);
