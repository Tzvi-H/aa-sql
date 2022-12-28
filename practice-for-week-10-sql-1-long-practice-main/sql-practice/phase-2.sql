drop table if exists customers;
drop table if exists coffee_orders;

create table customers (
  id  integer primary key,
  name varchar(40) not null,
  phone Numeric(10,0) unique,
  email varchar(255) unique,
  points integer default 5 not null,
  created_at TIMESTAMP default CURRENT_TIME not null
);

create table coffee_orders (
  id integer primary key,
  is_redeemed boolean default false,
  ordered_at TIMESTAMP default CURRENT_TIME not null
);
