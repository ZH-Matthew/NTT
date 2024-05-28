-- liquibase formatted sql

-- changeset mzhitenev:1
CREATE TABLE organization
(
    id                      BIGSERIAL PRIMARY KEY,
    full_name_organization  VARCHAR(255),
    short_name_organization VARCHAR(255),
    inn                     INT,
    ogrn                    INT,
    postal_address           VARCHAR(255),
    legal_address            VARCHAR(255),
    ceo_id                  bigint references Ceo (id)
);

INSERT INTO organization (full_name_organization,short_name_organization,inn,ogrn,postal_address,legal_address,ceo_id)
VALUES
    ('Tincidunt Orci LLC','Fermentum Vel Mauris Corporation',4336,568445,'584933','4624 Purus Av.',9),
    ('Donec Egestas LLC','Bibendum Foundation',132,216184,'64177','522-4505 Purus, Road',17),
    ('Odio Phasellus Limited','Nam LLC',2097,298515,'958063','5874 Convallis Road',3),
    ('Luctus Felis Purus LLP','Tincidunt Nunc Limited',4305,791628,'O1W 7E1','P.O. Box 164, 6151 Orci. Ave',16),
    ('Lectus Ante PC','Nec Company',802,494982,'587837','P.O. Box 726, 9609 Duis St.',7),
    ('Est Mollis Limited','Nisi Nibh Lacinia Consulting',8423,563986,'14-68','Ap #359-2675 Duis Avenue',11),
    ('Ac Associates','At Lacus Associates',7473,947488,'410213','Ap #132-2067 Amet, Road',10),
    ('Luctus Lobortis Institute','Rutrum Justo PC',1309,180882,'51546','Ap #272-4939 A, Road',13),
    ('Lacinia Incorporated','Adipiscing PC',2651,54446,'933757','Ap #780-8838 Morbi Rd.',3),
    ('Mi Foundation','Arcu Vivamus Corp.',3292,689928,'2314','Ap #404-148 Risus. Rd.',2);
INSERT INTO organization (full_name_organization,short_name_organization,inn,ogrn,postal_address,legal_address,ceo_id)
VALUES
    ('Aliquam Nec Inc.','Ac Incorporated',4485,163042,'83131','1471 Quisque Av.',20),
    ('Arcu Et LLC','Vestibulum Ante Ipsum Company',3515,775138,'2674','776-2289 Phasellus Ave',20),
    ('Euismod Est Industries','Ligula Consectetuer LLC',7844,265320,'1464','463-4104 Tempor Rd.',13),
    ('Senectus Et Netus Institute','Cursus A Inc.',2694,21161,'L7N 2E8','772-4941 Non, Rd.',4),
    ('Risus Donec Institute','Justo Faucibus Ltd',4074,20635,'44164','P.O. Box 644, 9093 Porttitor Street',16),
    ('Primis In Incorporated','Aliquet Libero Integer Foundation',7811,702932,'52208','Ap #330-7577 Magna. Street',7),
    ('Nec Orci Consulting','Eget Institute',1210,34271,'827147','650 Donec St.',18),
    ('Sapien Gravida Industries','Erat Vitae Inc.',9455,18896,'32-65','485-9658 Sed Rd.',15),
    ('Donec Dignissim Magna PC','Vivamus Ltd',1107,279939,'913475','Ap #670-7936 Vitae, St.',14),
    ('Sed Dictum Incorporated','Aliquam Associates',5325,585801,'62537-47093','Ap #384-4695 Aenean Ave',8);
INSERT INTO organization (full_name_organization,short_name_organization,inn,ogrn,postal_address,legal_address,ceo_id)
VALUES
    ('Nunc Est Associates','Libero Donec Consectetuer Inc.',1196,525206,'L0K 8X4','Ap #549-7081 Vitae Avenue',11),
    ('Laoreet Libero LLC','Metus In Lorem Foundation',1775,906642,'2361 RR','P.O. Box 412, 9233 Nulla Street',19),
    ('Quis Diam Incorporated','Faucibus PC',3545,916880,'50116','Ap #759-585 Pretium Av.',14),
    ('Semper Cursus Integer Inc.','Cras Interdum PC',1666,110649,'12709','882-2888 Tempus Rd.',6),
    ('Sem Mollis Foundation','Montes Nascetur Ltd',5307,657150,'811886','9405 Duis Rd.',15),
    ('Urna Institute','Integer Vulputate Corp.',8796,362357,'878154','602-5538 Leo, Rd.',4),
    ('Ligula PC','Nunc Ullamcorper Consulting',3698,214204,'572811','Ap #782-4183 Diam Rd.',16),
    ('Nulla Associates','Sem Pellentesque Incorporated',4742,494203,'51715','Ap #700-3955 Pellentesque Rd.',15),
    ('Magna Et Ipsum Limited','Eget Metus Corporation',3827,469438,'M1 2CW','Ap #672-862 Diam St.',5),
    ('Augue Sed Institute','Tellus Id LLP',113,802273,'24121-27545','P.O. Box 131, 7800 At, St.',5);
INSERT INTO organization (full_name_organization,short_name_organization,inn,ogrn,postal_address,legal_address,ceo_id)
VALUES
    ('Facilisis Eget Ipsum Associates','Nibh Dolor Nonummy LLC',2461,19298,'4278','8088 Urna St.',13),
    ('Vitae Nibh Corp.','Aenean Corp.',6897,562418,'63694','8906 Metus St.',2),
    ('Lobortis Ultrices Vivamus Company','Sit Industries',2790,990722,'292857','250-466 Leo. Rd.',15),
    ('A Felis Ltd','Eu LLP',674,94439,'507533','Ap #977-9918 Proin Rd.',16),
    ('Egestas Ligula Nullam Incorporated','Vitae Mauris Corp.',6149,657781,'18-69','Ap #389-8871 Nonummy Rd.',18),
    ('Dui LLP','Ipsum Porta Industries',2635,101308,'259314','Ap #466-7733 Sociis Street',4),
    ('Sapien Cras LLC','Condimentum Eget Foundation',6565,296936,'5324','5948 Nec Av.',4),
    ('Vulputate Lacus Incorporated','Eros Proin LLC',9531,400934,'20210','Ap #615-1418 Faucibus Street',8),
    ('Metus In Corporation','Eleifend Nec Malesuada Incorporated',8302,426087,'16217','5949 Mauris Street',6),
    ('Erat Sed Limited','At Augue Foundation',2279,405584,'5446','573-2251 Tincidunt Avenue',15);
INSERT INTO organization (full_name_organization,short_name_organization,inn,ogrn,postal_address,legal_address,ceo_id)
VALUES
    ('Varius Et Corp.','Sed Nulla Corp.',8324,502769,'626480','126-3794 Enim Ave',17),
    ('Dolor Elit PC','Facilisis Corp.',2082,89425,'50117','939-8134 Et, Street',13),
    ('Imperdiet Foundation','Nibh Donec Industries',3890,841220,'174755','1520 Eu Street',16),
    ('Pellentesque Ltd','Urna Ut Limited',9299,767564,'85457','Ap #332-8231 Sem Street',9),
    ('Mauris Quis Turpis Industries','Et Rutrum Non Limited',9559,797978,'3284','908-1003 Orci St.',4),
    ('Et Inc.','Ac Institute',9132,245577,'4786','Ap #676-351 Maecenas Av.',10),
    ('Quam Pellentesque Corp.','Libero At Foundation',1057,573325,'R5Y 6E2','642-4026 Non, St.',7),
    ('Nascetur Corp.','Varius Ultrices Incorporated',5121,162561,'6247 RK','Ap #643-8896 At St.',2),
    ('Sociis Natoque Industries','Mi Enim Inc.',5269,759439,'96-161','Ap #331-7720 Molestie Rd.',18),
    ('Integer Foundation','Ut Molestie In LLP',1763,196639,'43273','535-3597 Imperdiet Ave',9);