-- liquibase formatted sql

-- changeset mzhitenev:1
CREATE TABLE ceo
(
    id          BIGSERIAL PRIMARY KEY,
    first_name   VARCHAR(255),
    last_name    VARCHAR(255),
    sur_name     VARCHAR(255),
    birth_day    DATE

);

INSERT INTO ceo (first_name,last_name,sur_name,birth_day)
VALUES
    ('Illana Camacho','Farrah Meadows','Schneider','Aug 23, 2024'),
    ('Carissa Colon','Sage Shepherd','English','Jan 3, 2024'),
    ('Deborah Farmer','Nichole White','Paul','Nov 9, 2023'),
    ('Jenna Pierce','Kirby Orr','Fletcher','Jan 10, 2024'),
    ('Rose Mcintyre','Zena Mitchell','Calhoun','Dec 10, 2023'),
    ('Quin Garza','Yoshi Hutchinson','Byrd','Sep 7, 2023'),
    ('Amaya Bishop','Mary Edwards','Alexander','Feb 10, 2024'),
    ('Tatum Charles','Felicia Jensen','Barker','Apr 17, 2024'),
    ('Quon Hunt','Sigourney Meyer','Wolfe','Sep 15, 2023'),
    ('Madaline Nolan','Aimee Robertson','Hobbs','Sep 20, 2023');
INSERT INTO ceo (first_name,last_name,sur_name,birth_day)
VALUES
    ('Leigh Francis','Madison Morton','Pittman','Jan 13, 2025'),
    ('Basia Morin','Audrey Russo','Bray','Jun 28, 2024'),
    ('Adria Dudley','Pandora Barron','O''Neill','Nov 8, 2024'),
    ('Whitney Church','Uma Mckee','Tucker','Dec 19, 2023'),
    ('Jenna Stuart','Linda Perry','Morgan','Feb 12, 2025'),
    ('Jordan Cooper','Sydney Hardin','Cochran','Feb 4, 2025'),
    ('Kaitlin Pierce','Carissa Montgomery','Chan','Sep 14, 2023'),
    ('Echo Bender','Penelope Hopper','Conley','Aug 20, 2023'),
    ('Emi Gonzales','Alisa Wall','Robinson','Jul 19, 2024'),
    ('Britanni Alvarado','Xena Nash','Ratliff','Jun 23, 2024');
INSERT INTO ceo (first_name,last_name,sur_name,birth_day)
VALUES
    ('Quynn Conrad','Buffy Santiago','Dillard','Nov 28, 2023'),
    ('Ivy Bright','Amena Mckay','Mooney','Dec 24, 2024'),
    ('Idola Conley','Xaviera Rosales','Logan','Apr 7, 2024'),
    ('Ima Bullock','Illiana Olson','Jefferson','Mar 10, 2024'),
    ('Clio Kirkland','Leah Gould','Garner','Apr 9, 2024'),
    ('Lacy Avery','Suki Cain','Burke','Jan 18, 2025'),
    ('Hedwig Ingram','Mia Moses','Mueller','Aug 22, 2024'),
    ('Martha Rosario','Olivia Townsend','Huffman','Mar 17, 2025'),
    ('Robin Mcdaniel','Yen Macdonald','Ayala','Apr 17, 2024'),
    ('Yvonne Hart','Bertha Reid','Hale','Apr 27, 2025');
INSERT INTO ceo (first_name,last_name,sur_name,birth_day)
VALUES
    ('Sara Vance','Evelyn Blankenship','King','Dec 9, 2023'),
    ('Jessica Richards','Dana Freeman','Bell','Feb 15, 2024'),
    ('Harriet Strickland','Jillian Cantrell','Waller','Apr 3, 2024'),
    ('Quynn Wade','Idona Fletcher','Taylor','Sep 7, 2024'),
    ('TaShya Cruz','Charissa Bishop','Stuart','May 1, 2024'),
    ('Hilda Hester','Eliana Wolfe','Whitney','May 31, 2023'),
    ('Winter Steele','Cheyenne Padilla','Hodge','Jun 21, 2024'),
    ('Grace Mitchell','Dominique Hodge','Robinson','Dec 9, 2023'),
    ('Gillian Hodge','Jessamine Mayer','Curtis','Oct 8, 2024'),
    ('Deborah Shepard','Elizabeth Garcia','Middleton','Oct 2, 2024');
INSERT INTO ceo (first_name,last_name,sur_name,birth_day)
VALUES
    ('Yetta Mendoza','Lucy Jensen','Swanson','Jan 8, 2025'),
    ('Irma Curry','Denise Spears','Riggs','Jan 13, 2025'),
    ('Vivian Boone','Astra Wolfe','Boyle','Nov 5, 2023'),
    ('Karina Vega','Audrey Burt','Martin','Dec 5, 2023'),
    ('Wynter Lamb','Virginia Pruitt','Walls','Aug 19, 2023'),
    ('Willow Delgado','Virginia Mccray','Delaney','Dec 23, 2024'),
    ('Urielle Puckett','Quyn Hampton','Foley','Dec 8, 2023'),
    ('Cassidy Ellison','Evangeline Harper','Santiago','Mar 7, 2025'),
    ('Mia Kirkland','Simone Atkinson','Larson','Dec 6, 2024'),
    ('Lynn Knight','Octavia Morgan','Kane','Apr 12, 2024');