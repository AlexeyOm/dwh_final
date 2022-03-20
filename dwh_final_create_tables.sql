drop table if exists bookings.fact_flights;

create table bookings.fact_flights (
	pax_id int,
	departure_fact timestamp,
	arrival_fact timestamp,
	departure_delay int,
	arrival_delay int,
	aircraft_id int,
	departure_airport_id int,
	arrival_airport_id int,
	fare_conditions int	
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


drop table if exists bookings.dim_pax;

create table bookings.dim_pax (
	pax_id int,
	name varchar(50),
	phone varchar(10),
	email varchar(50)
);

comment on column bookings.dim_pax.pax_id is 'идентификатор пассажира';
comment on column bookings.dim_pax.name is 'фамилия и имя пассажира латиницей';
comment on column bookings.dim_pax.phone is 'телефон';
comment on column bookings.dim_pax.email is 'электронная почта';


drop table if exists bookings.dim_planes;

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
	id int,
	tarif varchar(10)
);

comment on column bookings.dim_tariff.id is 'id тарифа';
comment on column bookings.dim_tariff.tarif is 'название тарифа';


drop table if exists bookings.dim_airports;

create table bookings.dim_airports (
	id varchar(3),
	name varchar(50),
	city varchar(50),
	longtitude float(8),
	latitude float(8),
	timezone varchar(20)
);

comment on column bookings.dim_airports.id is 'id';
comment on column bookings.dim_airports.name is 'название аэропорта';
comment on column bookings.dim_airports.city is 'город, в котором или рядом с которым расположен аэропорт';
comment on column bookings.dim_airports.longtitude is 'координаты: долгота аэропорта';
comment on column bookings.dim_airports.latitude is 'координаты: широта аэропорта';
comment on column bookings.dim_airports.timezone is 'часовой пояс';
