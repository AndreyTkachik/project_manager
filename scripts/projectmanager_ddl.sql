create schema if not exists pm

create table if not exists pm.user (
	user_id integer not null primary key,
	user_name varchar(128) not null,
	cmd_id integer
)

create table if not exists pm.project (
	project_id integer not null primary key,
	project_name varchar(128) not null,
	project_priority integer not null,
	project_status integer not null
)

create table if not exists pm.project_user (
	user_id integer primary key,
	project_id integer not null
)

create table if not exists pm.project_materials (
	project_id integer not null primary key,
	project_disc varchar(512) not null,
	project_doc varchar(512) not null
)

create table if not exists pm.project_changes (
	project_id integer not null primary key,
	user_id integer not null,
	last_chng_time date not null
)

create table if not exists pm.project_deadlines (
	project_id integer not null primary key,
	start_date date not null,
	deadline_date date
)

create table if not exists pm.used_systems (
	project_id integer not null primary key,
	main_language varchar(128) not null,
	add_language varchar(128),
	add_systems varchar(128)
)

create table if not exists pm.users_team (
	cmd_id  integer not null primary key,
	cmd_name varchar(128),
	project_id integer not null,
	team_lid varchar(128) not null,
	users_cnt integer not null
)
