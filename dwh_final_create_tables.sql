drop table if exists bookings.fact_flights;

create table bookings.fact_flights (
	pax_id int,
	departure_fact timestamp,
	arrival_fact timestamp,
	departure_delay int,
	arrival_delay int,
	aircraft_id varchar(10),
	departure_airport_id varchar(3),
	arrival_airport_id varchar(3),
	fare_conditions varchar(15),
	price numeric(12,2)
);

comment on column bookings.fact_flights.pax_id is 'Идентификатор пассажира';
comment on column bookings.fact_flights.departure_fact is 'Дата и время вылета (факт)';
comment on column bookings.fact_flights.arrival_fact is 'Дата и время прилета (факт)';
comment on column bookings.fact_flights.departure_delay is 'Задержка вылета (разница между фактической и запланированной датой в секундах)';
comment on column bookings.fact_flights.arrival_delay is 'Задержка прилета (разница между фактической и запланированной датой в секундах)';
comment on column bookings.fact_flights.aircraft_id is 'Идентификатор самолёта';
comment on column bookings.fact_flights.departure_airport_id is 'Идентификатор аэропорта вылета';
comment on column bookings.fact_flights.arrival_airport_id is 'Идентификатор аэропорта прилёта';
comment on column bookings.fact_flights.fare_conditions is 'Класс обслуживания';


drop table if exists bookings.dim_passengers;

create table bookings.dim_passengers (
	pax_id int,
	passenger_id varchar(20),
	name varchar(50),
	phone varchar(15),
	email varchar(50),
	ticket_no varchar(15)
);

comment on column bookings.dim_passengers.pax_id is 'идентификатор пассажира';
comment on column bookings.dim_passengers.name is 'фамилия и имя пассажира латиницей';
comment on column bookings.dim_passengers.phone is 'телефон';
comment on column bookings.dim_passengers.email is 'электронная почта';


drop table if exists bookings.dim_aircrafts;

create table bookings.dim_aircrafts (
	id varchar(3),
	model varchar(50),
	range int
);

comment on column bookings.dim_aircrafts.id is 'код самолёта IATA';
comment on column bookings.dim_aircrafts.model is 'модель самолёта';
comment on column bookings.dim_aircrafts.range is 'максимальное расстояние';


drop table if exists bookings.dim_tariff;

create table bookings.dim_tariff (
	tarif varchar(10)
);

comment on column bookings.dim_tariff.tarif is 'название тарифа';


drop table if exists bookings.dim_airports;

create table bookings.dim_airports (
	id varchar(3),
	name varchar(50),
	city varchar(50),
	longitude float(8),
	latitude float(8),
	timezone varchar(20)
);

comment on column bookings.dim_airports.id is 'id';
comment on column bookings.dim_airports.name is 'название аэропорта';
comment on column bookings.dim_airports.city is 'город, в котором или рядом с которым расположен аэропорт';
comment on column bookings.dim_airports.longitude is 'координаты: долгота аэропорта';
comment on column bookings.dim_airports.latitude is 'координаты: широта аэропорта';
comment on column bookings.dim_airports.timezone is 'часовой пояс';
