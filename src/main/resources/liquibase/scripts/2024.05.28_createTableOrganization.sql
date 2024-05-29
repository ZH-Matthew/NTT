-- liquibase formatted sql

-- changeset mzhitenev:1
CREATE TABLE Organization
(
    id                      UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    full_name_organization  VARCHAR(255),
    short_name_organization VARCHAR(255),
    inn                     VARCHAR(255),
    ogrn                    VARCHAR(255),
    postal_address           VARCHAR(255),
    legal_address            VARCHAR(255),
    ceo_id                  UUID references Ceo(id)
);

INSERT INTO Organization (full_name_organization,short_name_organization,inn,ogrn,postal_address,legal_address)
VALUES
    ('Neque Morbi Quis Corporation','Nibh Enim PC','13525','857475','42723','P.O. Box 492, 4565 Elit. Road'),
    ('Velit LLP','Diam LLP','223326','5178','12619','Ap #981-9635 Condimentum. Ave'),
    ('Nulla Foundation','Pellentesque Institute','1896-3956','8641','834832','Ap #310-4055 Ad Ave'),
    ('Proin Velit Associates','Interdum Curabitur Foundation','T5G 5T5','24K 0B4','690828','Ap #740-7400 Nonummy St.'),
    ('Felis PC','Lobortis Incorporated','413061','39658','48908','7504 Vestibulum Av.'),
    ('Ultricies Adipiscing Enim Corp.','Vestibulum Nec LLP','719818','7672','6811 PP','254-1508 Integer St.'),
    ('Molestie Ltd','Conubia Nostra LLC','6758','53729-739','GN36 3YY','199-2593 At St.'),
    ('Ac Mi Associates','Interdum Sed Corporation','816563','0355','28002-282','216-1710 Nullam Road'),
    ('Mollis Dui Institute','Arcu Limited','5738','792245','6679','371-2055 Proin Road'),
    ('Libero Dui Nec LLP','Mi Enim Condimentum Foundation','75586','11793','7536','P.O. Box 244, 7139 Hendrerit St.');
INSERT INTO Organization (full_name_organization,short_name_organization,inn,ogrn,postal_address,legal_address)
VALUES
    ('Et Magnis LLC','Risus Odio PC','707018','10330','04403','663-6022 Mi, St.'),
    ('Egestas PC','Ipsum Curabitur Company','212056','245256','86-48','605-2246 Nec Av.'),
    ('Eget Mollis LLP','Ullamcorper Duis Institute','612167','212767','7211','220-3284 Vitae Av.'),
    ('Sed Hendrerit Company','Sapien Corporation','628265','9692','2369','276-5089 Mi Avenue'),
    ('Congue Elit Industries','Elit Inc.','248494','6861','44489','215-8996 Morbi Street'),
    ('Sem Institute','Ultricies Ligula Nullam Incorporated','A3V 8S3','20604','851288','9598 Magna Rd.'),
    ('In Institute','Ut Pharetra LLP','0585','22977','396534','Ap #509-4964 Sed Av.'),
    ('Dictum Phasellus Corp.','Magna Lorem Ipsum LLP','2692','3647','01584','Ap #374-6205 Ut Avenue'),
    ('Ipsum Dolor Sit Corp.','Enim Mi Incorporated','96672-926','813852','7137','P.O. Box 351, 866 Semper Road'),
    ('Arcu Curabitur Inc.','Eget Tincidunt Dui Institute','26016','5658-4407','8255-2316','P.O. Box 878, 7249 In Street');
INSERT INTO Organization (full_name_organization,short_name_organization,inn,ogrn,postal_address,legal_address)
VALUES
    ('Eleifend Corp.','Et Rutrum Corporation','P0H 3P6','7947 JV','115422','P.O. Box 425, 4334 Maecenas Rd.'),
    ('Felis Eget Industries','Tellus Nunc Corp.','63279','644667','62138','P.O. Box 853, 4547 Orci. Rd.'),
    ('Malesuada Institute','Tincidunt Donec LLC','75714','18282','12308','827-390 Scelerisque Rd.'),
    ('Rutrum Corp.','Ac Orci Institute','85815','SI4Y 7NL','632305','Ap #129-7836 Mauris, St.'),
    ('Quisque PC','Semper Rutrum LLC','690442','498857','872423','527-2737 Orci, Street'),
    ('Pellentesque Massa Institute','Tellus Phasellus Foundation','24543','2851','2904','P.O. Box 785, 2175 Risus. Rd.'),
    ('Faucibus Orci Incorporated','Augue Eu Limited','553627','S8P 3J4','2534 NE','379-2618 Quam St.'),
    ('Consequat Dolor Inc.','Convallis Erat Inc.','17787','5275','829598','941-7382 A St.'),
    ('Risus Quis LLP','At Fringilla Incorporated','582533','3464-7613','310224','Ap #951-1059 Sed Rd.'),
    ('Accumsan Company','Mollis Lectus Incorporated','2116','49413','18157-66575','Ap #337-9170 Dui, St.');
INSERT INTO Organization (full_name_organization,short_name_organization,inn,ogrn,postal_address,legal_address)
VALUES
    ('Neque Sed Corporation','Ultricies Ligula Associates','325831','36728-27680','41475','Ap #164-6918 Lacus. St.'),
    ('Ullamcorper Duis Associates','Ornare Egestas LLP','112640','53-12','7235 TM','Ap #691-2878 Arcu. Street'),
    ('Condimentum Donec Limited','Molestie Sodales LLC','755343','54217','450557','857-168 Libero. Avenue'),
    ('At Egestas Corporation','Scelerisque Dui Suspendisse Ltd','252136','42183','24734','259-9519 Duis Rd.'),
    ('Dapibus Quam Associates','Nec Mollis Vitae LLC','81742','37123','913422','577-9105 Integer Av.'),
    ('Lectus Associates','Fringilla Est LLP','4522','28785','7672','P.O. Box 319, 7106 Sed, St.'),
    ('Neque Pellentesque Institute','Erat In Corporation','30213','66768','346283','P.O. Box 566, 533 Mi Ave'),
    ('Ac Limited','Donec Est Industries','11736','05463','11614','Ap #789-7112 Penatibus Avenue'),
    ('Ut Mi Corp.','Sagittis Limited','1386','4220','2456','678-6980 Diam. Rd.'),
    ('Magna Company','Cum Sociis LLC','88171-398','188943','8933','8622 Elit, Rd.');
INSERT INTO Organization (full_name_organization,short_name_organization,inn,ogrn,postal_address,legal_address)
VALUES
    ('Orci Incorporated','Ac Corporation','9355','28032','43-75','Ap #168-5306 Egestas Rd.'),
    ('Semper Rutrum Ltd','Justo Nec Ante Industries','43912','80-167','472249','P.O. Box 744, 785 Integer Rd.'),
    ('Vel Arcu LLP','Non Consulting','61773','72377','44-27','941-1115 Egestas Rd.'),
    ('Ac Foundation','Duis Elementum Dui Company','857184','Y7L 9X1','8555','131-3032 Felis Rd.'),
    ('Mauris Suspendisse Associates','Ipsum LLC','88644','24214','25656','276-5517 Ullamcorper Street'),
    ('Donec Luctus Industries','Duis Gravida Praesent Corp.','35267','17744','47478','P.O. Box 757, 3659 Erat Road'),
    ('Dolor Vitae Dolor Limited','Fringilla Cursus Purus Corp.','4543','51603','2634-8167','P.O. Box 164, 1135 Cursus. Av.'),
    ('Nisi Corporation','Diam At Foundation','3412 SY','I5R 3VX','16647','P.O. Box 310, 993 Nisi St.'),
    ('Nunc Ut Limited','Iaculis Quis Corporation','4115','43537','2848','8068 Congue. Road'),
    ('Id Inc.','Conubia Ltd','834682','99223-646','2377-4715','P.O. Box 518, 5192 Aliquet. St.');

UPDATE Organization
SET ceo_id = Ceo.id
    FROM Ceo;
