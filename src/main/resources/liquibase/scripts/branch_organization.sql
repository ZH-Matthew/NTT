-- liquibase formatted sql

-- changeset mzhitenev:1
CREATE TABLE branch_organization
(
    id                  BIGSERIAL PRIMARY KEY,
    branch_name          VARCHAR(255),
    mailing_address      VARCHAR(255),
    branch_manager_id   bigint references branch_manager(id),
    organization_id     bigint references organization(id)
);

INSERT INTO branch_organization (branch_name,mailing_address,branch_manager_id,organization_id)
VALUES
    ('Ultrices A Institute','senectus.et@aol.edu',7,6),
    ('Cras Eu Inc.','gravida.aliquam.tincidunt@aol.org',5,19),
    ('Feugiat Corporation','nisl.sem@aol.com',7,16),
    ('Quis Arcu LLP','sed@protonmail.ca',7,3),
    ('Cras Sed Industries','adipiscing.lacus@hotmail.org',18,17),
    ('Mauris Suspendisse LLC','ut.nec@hotmail.ca',4,2),
    ('Dignissim Foundation','orci.consectetuer.euismod@yahoo.edu',9,1),
    ('Duis Ac Arcu Institute','vestibulum.accumsan@icloud.edu',10,7),
    ('Lacus Aliquam Rutrum Industries','libero.nec@aol.ca',6,6),
    ('Aliquam Rutrum Inc.','feugiat@icloud.couk',17,6);
INSERT INTO branch_organization (branch_name,mailing_address,branch_manager_id,organization_id)
VALUES
    ('Elit Fermentum Risus Inc.','sem@outlook.edu',6,3),
    ('Sagittis Nullam PC','arcu.nunc@hotmail.net',18,14),
    ('Massa Suspendisse PC','ligula@icloud.edu',11,3),
    ('Nascetur Institute','blandit.congue@hotmail.ca',17,7),
    ('Purus Ac Corp.','ut.molestie@yahoo.edu',17,1),
    ('Egestas Nunc Sed Industries','dui.suspendisse@outlook.ca',16,15),
    ('Eu Enim Etiam LLP','aliquam@icloud.com',16,9),
    ('A Auctor Associates','imperdiet@yahoo.org',3,4),
    ('Lectus Pede LLP','dolor.nulla@hotmail.edu',6,20),
    ('Mauris Ut Inc.','est.mauris.eu@icloud.ca',19,11);
INSERT INTO branch_organization (branch_name,mailing_address,branch_manager_id,organization_id)
VALUES
    ('Arcu Curabitur Ut Industries','ac@protonmail.ca',17,5),
    ('Et Commodo At Ltd','ut.tincidunt@icloud.ca',6,11),
    ('Orci Lobortis Augue Company','cursus@hotmail.ca',14,3),
    ('Nascetur Ridiculus Incorporated','malesuada.fames@aol.org',3,19),
    ('Donec Sollicitudin Adipiscing PC','ut.sagittis@hotmail.couk',15,13),
    ('In Mi Associates','malesuada.ut@outlook.edu',18,9),
    ('Porttitor Interdum Foundation','faucibus.ut.nulla@aol.ca',2,4),
    ('Donec Egestas Aliquam Foundation','natoque.penatibus.et@google.couk',9,3),
    ('Pellentesque Habitant LLC','tincidunt.nunc.ac@hotmail.edu',14,14),
    ('Urna Ut Tincidunt Consulting','ac.risus.morbi@outlook.net',19,16);
INSERT INTO branch_organization (branch_name,mailing_address,branch_manager_id,organization_id)
VALUES
    ('In Limited','gravida.mauris@outlook.org',10,4),
    ('Tristique Ac Eleifend Incorporated','dignissim.pharetra@icloud.org',19,15),
    ('Cras Sed LLC','nulla@protonmail.net',10,4),
    ('Lacinia Orci LLC','mauris.nulla@aol.ca',11,20),
    ('Morbi Tristique LLP','venenatis@icloud.edu',8,4),
    ('Eu Corporation','pharetra.ut@protonmail.com',11,18),
    ('Turpis Non LLC','sit.amet.ultricies@icloud.com',20,14),
    ('Elit Etiam LLP','aliquet.proin@protonmail.com',13,18),
    ('Nisi LLP','morbi.tristique@icloud.net',3,13),
    ('Ut Nulla Cras LLP','dapibus.id.blandit@yahoo.couk',17,17);
INSERT INTO branch_organization (branch_name,mailing_address,branch_manager_id,organization_id)
VALUES
    ('Penatibus Et Magnis Limited','ac.mattis@hotmail.net',7,5),
    ('Arcu Vel Incorporated','ante@icloud.edu',2,9),
    ('Quisque Imperdiet Institute','molestie.arcu@google.com',13,17),
    ('Vitae Limited','pretium@protonmail.net',16,13),
    ('Fringilla Incorporated','a.ultricies@yahoo.ca',10,4),
    ('Nam Incorporated','sodales@protonmail.edu',8,2),
    ('Nonummy Ac Feugiat Foundation','condimentum@protonmail.com',14,7),
    ('Justo Faucibus LLC','nunc.mauris.elit@google.com',19,7),
    ('Fusce Mi LLP','fringilla.cursus@aol.org',16,16),
    ('Mi Pede Nonummy Corp.','ut.tincidunt.orci@icloud.com',11,10);

