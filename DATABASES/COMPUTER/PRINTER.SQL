CREATE TABLE PRINTER(
    model int PRIMARY KEY,
    color BOOLEAN,
    type varchar(10),
    price int
);
insert into PRINTER values(3001, true, 'ink-jet', 99);
insert into PRINTER values(3002, false, 'laser', 239);
insert into PRINTER values(3003, true, 'laser', 899);
insert into PRINTER values(3004, true, 'ink-jet', 120);
insert into PRINTER values(3005, false, 'laser', 120);
insert into PRINTER values(3006, true, 'ink-jet', 100);
insert into PRINTER values(3007, true, 'laser', 200);