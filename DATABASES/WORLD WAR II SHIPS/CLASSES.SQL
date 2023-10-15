CREATE TABLE CLASSES (
    class varchar(30) primary key,
    type varchar(5),
    country varchar(30),
    numGuns int,
    bore int,
    displacement int
);

insert into CLASSES values ('Bismarck', 'bb', 'Germany', 8, 15, 42000);
insert into CLASSES values ('Iowa', 'bb', 'USA', 9, 16, 46000);
insert into CLASSES values ('Kongo', 'bc', 'Japan', 8, 14, 32000);
insert into CLASSES values ('North Carolina', 'bb', 'USA', 9, 16, 37000);
insert into CLASSES values ('Renown', 'bc', 'Gt.Britain', 6, 15, 32000);
insert into CLASSES values ('Revenge', 'bb', 'Gt.Britain', 8, 15, 29000);
insert into CLASSES values ('Tennessee', 'bb', 'USA', 12, 14, 32000);
insert into CLASSES values ('Yamato', 'bb', 'Japan', 9, 18, 65000);
