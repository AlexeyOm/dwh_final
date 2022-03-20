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
