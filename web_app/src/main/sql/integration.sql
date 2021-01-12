drop table if exists Contract;
drop table if exists Customer;
drop table if exists Product;

create table Contract (
 id int primary key auto_increment,
 marge float NOT NULL
) engine = InnoDB;

create table Customer (
  id int primary key auto_increment,
  name varchar(250) not null,
  phone int(11) not null,
  email varchar(250) not null,
  mdp varchar(250) not null
) engine = InnoDB;

create table Product (
  id int primary key auto_increment,
  name varchar(50) not null,
  cout_de_fabrication float not null
) engine = InnoDB;


insert into Contract (marge)
values
(5),
(10),
(15);

insert into Customer (name, phone, email, mdp)
values
('jacques', 610203060, 'jacques.sparow@jaipasdidee.fr', 'azerty'),
('michel', 690807060, 'michel.cestle@bresil.fr', 'azerty'),
('lucifer', 666666666, 'lucifer.ilfaitchaud@enfer.fr', 'azerty');

insert into Product (name, cout_de_fabrication)
values
('pneu', 150),
('portiere', 200),
('pot_d_echappement', 45);