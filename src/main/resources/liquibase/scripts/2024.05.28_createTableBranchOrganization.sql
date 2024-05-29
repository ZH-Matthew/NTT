-- liquibase formatted sql

-- changeset mzhitenev:1
CREATE TABLE Branch_organization
(
    id                  UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    organization_id     UUID,
    branch_manager_id   UUID,
    branch_name          VARCHAR(255),
    mailing_address      VARCHAR(255),
    FOREIGN KEY (organization_id) REFERENCES Organization(id),
    FOREIGN KEY (branch_manager_id) REFERENCES Branch_manager(id)
);

INSERT INTO Branch_organization (branch_name,mailing_address)
VALUES
    ('Egestas Sed LLP','683-4748 Fames Road'),
    ('Metus Aliquam Erat LLP','Ap #843-5812 Nullam Street'),
    ('Purus Sapien Industries','Ap #803-2160 Ante Avenue'),
    ('Odio Nam LLC','209-4952 Elit. Ave'),
    ('Justo Faucibus Industries','Ap #328-8516 Adipiscing Street'),
    ('Amet Dapibus Id Ltd','5536 Dictum. Ave'),
    ('Natoque Penatibus Associates','Ap #362-6234 Mus. Av.'),
    ('Purus Mauris Corp.','3400 Non Street'),
    ('Ut Cursus Luctus Corporation','953-7892 Augue Av.'),
    ('Pellentesque Ut LLC','Ap #721-578 Egestas, Rd.');
INSERT INTO Branch_organization (branch_name,mailing_address)
VALUES
    ('Accumsan Industries','822-9747 Libero Rd.'),
    ('Enim Industries','846-5580 Id, St.'),
    ('Pede Cum Sociis LLP','P.O. Box 326, 4503 Tellus, Rd.'),
    ('Fermentum Limited','422-6574 Vehicula Street'),
    ('Eu Nulla Limited','Ap #922-3633 Orci Street'),
    ('Vel Faucibus PC','Ap #445-8019 Hendrerit Road'),
    ('Luctus Ut Foundation','3343 Metus. Street'),
    ('Amet Orci LLC','Ap #775-5808 Non Rd.'),
    ('Curabitur Dictum Phasellus Corporation','629-1456 Nunc Avenue'),
    ('Cras Lorem Lorem Company','475-3846 Arcu. St.');
INSERT INTO Branch_organization (branch_name,mailing_address)
VALUES
    ('Mauris Sapien Cursus Corp.','754-6933 Enim. Rd.'),
    ('Malesuada Fames Limited','Ap #228-1337 Nam Rd.'),
    ('Lectus Pede Ultrices LLC','Ap #652-8559 Orci Av.'),
    ('Nullam Nisl Inc.','Ap #532-5470 Erat Av.'),
    ('Dui Augue Associates','P.O. Box 881, 6549 Vel Rd.'),
    ('Ullamcorper PC','2587 Tempor Street'),
    ('Iaculis Nec Corp.','Ap #182-9295 Ornare, St.'),
    ('Parturient Montes Nascetur LLC','320-838 Odio Rd.'),
    ('Cras Eget Nisi Company','Ap #587-1205 In Road'),
    ('Sed Auctor LLP','553-2814 Pellentesque Street');
INSERT INTO Branch_organization (branch_name,mailing_address)
VALUES
    ('Dolor Egestas Rhoncus Ltd','4915 Eu, Av.'),
    ('Sit Amet Consectetuer Institute','167-6850 Augue Rd.'),
    ('Leo Morbi Associates','P.O. Box 841, 3413 Elementum Avenue'),
    ('Tellus Id Ltd','Ap #634-8652 Proin Road'),
    ('Odio Auctor Corporation','547-3644 Ipsum. Road'),
    ('Etiam Gravida Molestie Limited','Ap #377-8506 Vestibulum St.'),
    ('Accumsan Neque Industries','686-364 Nisi Rd.'),
    ('Lectus PC','732-530 Elementum Rd.'),
    ('Et Associates','256-964 Tristique Street'),
    ('Morbi Associates','4529 Non St.');
INSERT INTO Branch_organization (branch_name,mailing_address)
VALUES
    ('Eget Ltd','P.O. Box 175, 254 Dui Ave'),
    ('Egestas A Dui Corporation','5115 Id, St.'),
    ('Lectus Sit Incorporated','Ap #312-9266 Quam Rd.'),
    ('Velit Eu Inc.','P.O. Box 645, 808 Erat. Street'),
    ('Id Incorporated','7164 Molestie Road'),
    ('Quisque Ornare Tortor Associates','492-1631 Suspendisse Av.'),
    ('Ipsum Inc.','Ap #367-1324 Erat, Rd.'),
    ('Montes Nascetur Ltd','P.O. Box 439, 4609 Magna. Ave'),
    ('Blandit Nam PC','893-2010 Iaculis St.'),
    ('Vel Corp.','378-1098 Mauris St.');

UPDATE Branch_organization
SET organization_id = Organization.id
    FROM Organization;

UPDATE Branch_organization
SET branch_manager_id = Branch_manager.id
    FROM Branch_manager;

