CREATE TABLE SHIPS (
    name varchar(30) primary key,
    class varchar(30),
    launched int,
    FOREIGN KEY (class) REFERENCES CLASSES(class)
);

insert into SHIPS values ('California', 'Tennessee', 1921);
insert into SHIPS values ('Haruna', 'Kongo', 1915);
insert into SHIPS values ('Hiei', 'Kongo', 1914);
insert into SHIPS values ('Iowa', 'Iowa', 1943);
insert into SHIPS values ('Kirishima', 'Kongo', 1915);
insert into SHIPS values ('Kongo', 'Kongo', 1913);
insert into SHIPS values ('Missouri', 'Iowa', 1944);
insert into SHIPS values ('Musashi', 'Yamato', 1942);
insert into SHIPS values ('New Jersey', 'Iowa', 1943);
insert into SHIPS values ('North Carolina', 'North Carolina', 1941);
insert into SHIPS values ('Ramillies', 'Revenge', 1917);
insert into SHIPS values ('Renown', 'Renown', 1916);
insert into SHIPS values ('Repulse', 'Renown', 1916);
insert into SHIPS values ('Resolution', 'Revenge', 1916);
insert into SHIPS values ('Revenge', 'Revenge', 1916);
insert into SHIPS values ('Royal Oak', 'Revenge', 1916);
insert into SHIPS values ('Royal Sovereign', 'Revenge', 1916);
insert into SHIPS values ('Tennessee', 'Tennessee', 1920);
insert into SHIPS values ('Washington', 'North Carolina', 1941);
insert into SHIPS values ('Wisconsin', 'Iowa', 1944);
insert into SHIPS values ('Yamato', 'Yamato', 1941);
