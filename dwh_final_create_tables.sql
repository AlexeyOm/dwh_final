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

comment on column bookings.fact_flights.pax_id is '������������� ���������';
comment on column bookings.fact_flights.departure_fact is '���� � ����� ������ (����)';
comment on column bookings.fact_flights.arrival_fact is '���� � ����� ������� (����)';
comment on column bookings.fact_flights.departure_delay is '�������� ������ (������� ����� ����������� � ��������������� ����� � ��������)';
comment on column bookings.fact_flights.arrival_delay is '�������� ������� (������� ����� ����������� � ��������������� ����� � ��������)';
comment on column bookings.fact_flights.airplane_id is '������������� �������';
comment on column bookings.fact_flights.departure_airport_id is '������������� ��������� ������';
comment on column bookings.fact_flights.arrival_airport_id is '������������� ��������� ������';
comment on column bookings.fact_flights.fare_conditions is '����� ������������';


select distinct jsonb_object_keys(contact_data) from bookings.tickets; --��������, ��� � ���������� ������ ���� ������ email � phone
select max(length(passenger_name)) from bookings.tickets t ; --�������� ����� ���, ����� ����� � �������

drop table if exists bookings.dim_pax;

create table bookings.dim_pax (
	id int,
	pax_id int,
	name varchar(50),
	phone varchar(10),
	email varchar(50)
);

comment on column bookings.dim_pax.id is '����������� ����';
comment on column bookings.dim_pax.pax_id is '������������� ���������';
comment on column bookings.dim_pax.name is '������� � ��� ��������� ���������';
comment on column bookings.dim_pax.phone is '�������';
comment on column bookings.dim_pax.email is '����������� �����';




drop table if exists bookings.dim_pax;

create table bookings.dim_pax (
	id int,
	pax_id int,
	name varchar(50),
	phone varchar(10),
	email varchar(50)
);



