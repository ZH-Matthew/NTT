-- liquibase formatted sql

-- changeset mzhitenev:1
CREATE TABLE branch_manager
(
    id          BIGSERIAL PRIMARY KEY,
    first_name   VARCHAR(255),
    last_name    VARCHAR(255),
    sur_name     VARCHAR(255),
    birth_day    DATE
);

INSERT INTO branch_manager (first_name,last_name,sur_name,birth_day)
VALUES
    ('Raya Todd','India Wilkinson','Davenport','Jun 17, 2023'),
    ('Xyla Atkins','Jayme Decker','Ford','Sep 5, 2024'),
    ('Xyla Travis','Yetta Cohen','Vinson','Aug 2, 2024'),
    ('Karina Fischer','Inez Ramirez','Langley','Feb 11, 2024'),
    ('Cecilia Ellis','Maris Shelton','Peters','Apr 18, 2024'),
    ('Mechelle Clarke','Zelda Park','Duffy','Aug 18, 2024'),
    ('Serina Albert','Melinda Ramsey','Castaneda','Jan 31, 2025'),
    ('Shana Carey','Juliet Figueroa','Patton','Sep 14, 2024'),
    ('Kiayada York','Wendy Malone','Richard','Jul 23, 2023'),
    ('Reagan Schmidt','Lysandra Campos','Montgomery','Feb 13, 2025');
INSERT INTO branch_manager (first_name,last_name,sur_name,birth_day)
VALUES
    ('Sopoline Silva','Giselle Marshall','Hutchinson','May 17, 2024'),
    ('Jolie Houston','Shafira Carroll','Pollard','Nov 12, 2023'),
    ('Alika Ellis','Ifeoma Lewis','Olson','Jul 7, 2024'),
    ('Kylan Bridges','Gay Holman','Slater','Mar 8, 2025'),
    ('Selma Fleming','Leigh Hurley','Camacho','Jan 9, 2025'),
    ('Veronica Wilcox','Maya Leblanc','Dennis','Feb 14, 2024'),
    ('Ann Dixon','Tanya Mcguire','Fleming','Oct 26, 2024'),
    ('Christen Travis','Geraldine Joyce','Lawson','Oct 8, 2023'),
    ('Clio Richardson','Briar Stewart','Joseph','Jun 13, 2024'),
    ('Amy Mann','Alana Tyler','Sharp','May 17, 2025');
INSERT INTO branch_manager (first_name,last_name,sur_name,birth_day)
VALUES
    ('Brielle Ruiz','Nevada Newman','Greer','Aug 1, 2024'),
    ('Aline Hardy','Iris Washington','Stafford','Aug 17, 2024'),
    ('Cameran Molina','Haviva Ashley','Collier','Dec 21, 2023'),
    ('Blythe Cameron','Ruth Callahan','Love','Nov 26, 2024'),
    ('Medge Blake','Karly Rowe','Welch','Mar 22, 2025'),
    ('Charissa Curry','Iona Oneil','Weaver','Mar 31, 2024'),
    ('Sasha Reed','Lana Maddox','Gaines','Nov 21, 2024'),
    ('Isabella Dunlap','Inga Ashley','Head','Feb 8, 2025'),
    ('Melissa Dorsey','Alexandra Thomas','Crawford','Jun 18, 2024'),
    ('Shafira Padilla','Hope Reyes','Sargent','Jan 7, 2025');
INSERT INTO branch_manager (first_name,last_name,sur_name,birth_day)
VALUES
    ('Audra Shields','Hedy Hull','Cross','Dec 15, 2023'),
    ('Brianna Mcconnell','Kathleen Kent','Sharp','Dec 6, 2024'),
    ('Hermione Burks','Audra Finley','Pope','Jan 3, 2025'),
    ('Xena Coffey','Octavia Bates','Valentine','Nov 3, 2024'),
    ('Illiana White','Gretchen Yates','Cervantes','Dec 17, 2023'),
    ('Maryam Cotton','Shelly Meadows','Buck','May 15, 2024'),
    ('Jescie O''brien','Cara Beck','Pate','Jan 17, 2024'),
    ('Nola Bartlett','Xaviera Rich','Kline','Jan 26, 2024'),
    ('September Mclean','Phyllis Cooper','Holcomb','Oct 26, 2023'),
    ('Cameran Velazquez','Odessa Payne','Mcmillan','Jul 26, 2024');
INSERT INTO branch_manager (first_name,last_name,sur_name,birth_day)
VALUES
    ('Maggy Fox','Ginger Small','Hodges','Sep 26, 2024'),
    ('Dominique Cantu','Audrey Brock','Gutierrez','Mar 17, 2024'),
    ('Emi Boyer','Molly Craig','Head','Oct 26, 2023'),
    ('Whitney Cummings','Nadine Sullivan','Andrews','Jul 31, 2023'),
    ('Jennifer Briggs','Kelsie Cotton','Stevenson','Apr 29, 2025'),
    ('Sopoline Mullen','Anika Sherman','Frye','Jan 27, 2025'),
    ('Chava Blevins','Chantale Barrett','Carroll','Aug 3, 2024'),
    ('Dora Sweeney','Ciara Stephens','Simmons','Nov 20, 2024'),
    ('TaShya Salas','Deborah Decker','Carpenter','Nov 24, 2023'),
    ('Maile Church','Stella Hinton','Winters','Dec 17, 2023');
