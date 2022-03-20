drop table if exists bookings.fact_flights;

create table bookings.fact_flights (
	pax_id int,
	departure_fact timestamp,
	arrival_fact timestamp,
	departure_delay int,
	arrival_delay int,
	airplane_id int,
	departure_airport_id int,
	arrival_airport_id int,
	fare_conditions varchar(20)	
);

comment on column bookings.fact_flights.pax_id is 'Идентификатор пассажира';
comment on column bookings.fact_flights.departure_fact is 'Дата и время вылета (факт)';
comment on column bookings.fact_flights.arrival_fact is 'Дата и время прилета (факт)';
comment on column bookings.fact_flights.departure_delay is 'Задержка вылета (разница между фактической и запланированной датой в секундах)';
comment on column bookings.fact_flights.arrival_delay is 'Задержка прилета (разница между фактической и запланированной датой в секундах)';
comment on column bookings.fact_flights.airplane_id is 'Идентификатор самолёта';
comment on column bookings.fact_flights.departure_airport_id is 'Идентификатор аэропорта вылета';
comment on column bookings.fact_flights.arrival_airport_id is 'Идентификатор аэропорта прилёта';
comment on column bookings.fact_flights.fare_conditions is 'Класс обслуживания';


select distinct jsonb_object_keys(contact_data) from bookings.tickets; --убедимся, что в контактных данных есть только email и phone
select max(length(passenger_name)) from bookings.tickets t ; --проверим длину имён, чтобы взять с запасом

drop table if exists bookings.dim_pax;

create table bookings.dim_pax (
	id int,
	pax_id int,
	name varchar(50),
	phone varchar(10),
	email varchar(50)
);

comment on column bookings.dim_pax.id is 'суррогатный ключ';
comment on column bookings.dim_pax.pax_id is 'идентификатор пассажира';
comment on column bookings.dim_pax.name is 'фамилия и имя пассажира латиницей';
comment on column bookings.dim_pax.phone is 'телефон';
comment on column bookings.dim_pax.email is 'электронная почта';




drop table if exists bookings.dim_pax;

create table bookings.dim_pax (
	id int,
	pax_id int,
	name varchar(50),
	phone varchar(10),
	email varchar(50)
);



