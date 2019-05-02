--mysql-ctl install
--phpmyadmin-ctl install
--mysql-ctl start

drop database if exists verkkokauppa;

create database verkkokauppa;

use verkkokauppa;

create table tuoteryhma (
    id int primary key auto_increment,
    nimi varchar(50) unique not null
);

create table tuote (
    id int primary key auto_increment,
    nimi varchar(100) not null,
    hinta double not null,
    tuoteryhma_id int not null,
    foreign key (tuoteryhma_id) references tuoteryhma(id)
    on delete restrict
);

create table tilat (
    id int primary key auto_increment,
    tila char(1) not null,
    hinta double not null
);

create table varaus (
    id int primary key auto_increment,
    tilat_id int not null,
    aloitusaika datetime,
    lopetusaika datetime,
    asiakas varchar(100) not null,
    foreign key (tilat_id) references tilat(id)
    on delete restrict
);

create table vuokraus (
    id int primary key auto_increment,
    nimi varchar(100) not null,
    hinta double not null,
    tuoteryhma varchar(50) not null,
    aloitusaika date,
    lopetusaika date,
    tila char(1)not null
);

create table osto (
    id int primary key auto_increment,
    sukunimi varchar(100) not null,
    etunimi varchar(100) not null,
    s_posti varchar(100) not null,
    tuote_id int not null,
    foreign key (tuote_id) references tuote(id)
    on delete restrict
    );
    
create table kayttaja (
    id int primary key auto_increment,
    tunnus varchar(100) not null unique,
    salasana varchar(255) not null
    );
    
    insert into kayttaja (tunnus,salasana) values ('admin',md5('admin'));

insert into tuoteryhma (nimi) value ('Lasit');
insert into tuoteryhma (nimi) value ('Oheistuotteet');
insert into tuoteryhma (nimi) value ('Käytetyt');

insert into tuote (nimi,hinta,tuoteryhma_id) values 
('Oculus Rift VR + Oculus Touch',450,1);

insert into tuote (nimi,hinta,tuoteryhma_id) values 
('Thrustmaster T500 RS GT',450,2);

/*Unohdin sitte lyyä tänne muut tuotteet.*/


muita hyödyllisiä komentoja :

ALTER TABLE tähäntaulunnimi DROP tähänsarakkeennimi. lähtee sarake=column taulusta.

ALTER TABLE vendors
ADD COLUMN tähäntaulunnimi tähäntietotyyppi(ESIM:VARCHAR(15)) AFTER tähänkohta mihin se lisätään.











