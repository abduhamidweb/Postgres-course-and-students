CREATE TABLE course
(
    id VARCHAR(36) DEFAULT uuid_generate_v4() PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    month int NOT NULL,
    price int NOT null
);

CREATE TABLE students
(
    id VARCHAR(256) DEFAULT uuid_generate_v4() PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    age int NOT NULL,
    course_id VARCHAR(256) REFERENCES course(id) on DELETE CASCADE
);
INSERT INTO course
    (name, month, price)
VALUES

    ('node' , 7, 1000),
    ('python' , 8, 1500),
    ('java' , 6, 2000),
    ('.net' , 8, 1100),
    ('php' , 6, 1000),
    ('nest' , 8, 1100),
    ('go' , 7, 1600),
    ('c' , 6, 1300),
    ('javascript' , 6, 1200);

INSERT INTO students
    (name, age , course_id)
VALUES
    ('Kamron' , 20 , '3b43edb5-8ea5-4957-9040-5a63421d8c3c'),
    ('Halima' , 21, '632d3c1a-b2d8-4e9a-8747-a5b3afa58274'),
    ('Orif' , 27 , 'dfb34e11-b5a4-4515-b43f-5429216142ea'),
    ('Javohir' , 26 , '29e24ef7-b0a2-4283-914d-4e60a214ff73'),
    ('Sardor' , 24 , '29e24ef7-b0a2-4283-914d-4e60a214ff73'),
    ('Alisher' , 24 , '29e24ef7-b0a2-4283-914d-4e60a214ff73'),
    ('Po''lat' , 24 , '29e24ef7-b0a2-4283-914d-4e60a214ff73'),
    ('Olim' , 24 , '29e24ef7-b0a2-4283-914d-4e60a214ff73'),
    ('Karima' , 24 , 'c353b537-c760-4055-bf10-773fe571f7dd'),
    ('Sarvar' , 24 , '29e24ef7-b0a2-4283-914d-4e60a214ff73'),
    ('Jumanazar' , 24 , '8aea05a5-4fcd-4a4e-8833-ec8a57da39bf'),
    ('Botir' , 24 , '29e24ef7-b0a2-4283-914d-4e60a214ff73'),
    ('Umid' , 24 , '632d3c1a-b2d8-4e9a-8747-a5b3afa58274'),
    ('No''mon' , 24 , 'c353b537-c760-4055-bf10-773fe571f7dd'),
    ('Farrux' , 24 , 'dfb34e11-b5a4-4515-b43f-5429216142ea'),
    ('Qodir' , 24 , '632d3c1a-b2d8-4e9a-8747-a5b3afa58274'),
    ('Ifora' , 24 , '29c495ba-e921-4f81-80dd-958c33b8b40c'),
    ('Jamila' , 24 , '19c8ed7d-512e-4230-bbc9-cb8651d52959'),
    ('In''om' , 22 , '19c8ed7d-512e-4230-bbc9-cb8651d52959');
