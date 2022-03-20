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

comment on column bookings.fact_flights.pax_id is '������������� ���������';
comment on column bookings.fact_flights.departure_fact is '���� � ����� ������ (����)';
comment on column bookings.fact_flights.arrival_fact is '���� � ����� ������� (����)';
comment on column bookings.fact_flights.departure_delay is '�������� ������ (������� ����� ����������� � ��������������� ����� � ��������)';
comment on column bookings.fact_flights.arrival_delay is '�������� ������� (������� ����� ����������� � ��������������� ����� � ��������)';
comment on column bookings.fact_flights.aircraft_id is '������������� �������';
comment on column bookings.fact_flights.departure_airport_id is '������������� ��������� ������';
comment on column bookings.fact_flights.arrival_airport_id is '������������� ��������� ������';
comment on column bookings.fact_flights.fare_conditions is '����� ������������';


drop table if exists bookings.dim_pax;

create table bookings.dim_pax (
	pax_id int,
	name varchar(50),
	phone varchar(10),
	email varchar(50)
);

comment on column bookings.dim_pax.pax_id is '������������� ���������';
comment on column bookings.dim_pax.name is '������� � ��� ��������� ���������';
comment on column bookings.dim_pax.phone is '�������';
comment on column bookings.dim_pax.email is '����������� �����';


drop table if exists bookings.dim_planes;

create table bookings.dim_aircrafts (
	id varchar(3),
	model varchar(50),
	range int
);

comment on column bookings.dim_aircrafts.id is '��� ������� IATA';
comment on column bookings.dim_aircrafts.model is '������ �������';
comment on column bookings.dim_aircrafts.range is '������������ ����������';


drop table if exists bookings.dim_tariff;

create table bookings.dim_tariff (
	id int,
	tarif varchar(10)
);

comment on column bookings.dim_tariff.id is 'id ������';
comment on column bookings.dim_tariff.tarif is '�������� ������';


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
comment on column bookings.dim_airports.name is '�������� ���������';
comment on column bookings.dim_airports.city is '�����, � ������� ��� ����� � ������� ���������� ��������';
comment on column bookings.dim_airports.longtitude is '����������: ������� ���������';
comment on column bookings.dim_airports.latitude is '����������: ������ ���������';
comment on column bookings.dim_airports.timezone is '������� ����';
