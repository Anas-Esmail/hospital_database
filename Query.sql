CREATE database anas_hospital

CREATE TABLE main_bill  (
main_bill_number INT , 
main_bill_date VARCHAR(100),

CONSTRAINT ADD PRIMARY KEY(main_bill_number)

) 
ALTER TABLE main_bill ADD detailed_bill_number int FOREIGN KEY(detailed_bill_number)


CREATE TABLE department  (
depertment_number INT , 
depertment_name VARCHAR(100),

CONSTRAINT ADD PRIMARY KEY(depertment_number)

) 



CREATE TABLE ill  (
ill_id INT , 
ill_name VARCHAR(100),
ill_sex  VARCHAR(100),
ill_date  VARCHAR(100),
ill_phone  INT,
ill_address VARCHAR(100),

CONSTRAINT ADD PRIMARY KEY(ill_id)

) 

INSERT INTO TABLE ill (ill_id,ill_name,ill_sex,ill_date,ill_phone,ill_address) VALUES (1,anas,male,12-12-1998,777777,yemen),(2,ahmed,male,12-12-1998,777777,yemen),(3,salah,male,12-12-1998,777777,yemen)

INSERT INTO TABLE doctor (speicail_number,doctor_number,doctor_name,doctor_speicail) VALUES (1,1,salah,heart),(2,1,ahmed,ear)

INSERT INTO TABLE department (department_number,department_name) VALUES (1,salgry),(2,emergency)


INSERT INTO TABLE detailed_bill (detailed_bill_number,service_price,services_number) VALUES (1,1000,2),(2,200,3)



CREATE TABLE detailed_bill  (
detailed_bill_number INT , 
service_price INT ,

departmentCONSTRAINT ADD PRIMARY KEY(detailed_bill_number)

) 


CREATE TABLE doctor  (
doctor_number INT , 
doctor_name VARCHAR(100) ,
doctor_speicail VARCHAR(100),


CONSTRAINT ADD PRIMARY KEY(doctor_number)

) 
ALTER TABLE doctor ADD speicail_number int FOREIGN KEY(speicail_number)



CREATE TABLE department  (
department_number INT , 
department_name VARCHAR(100) ,


CONSTRAINT ADD PRIMARY KEY(department_number)

) 

CREATE TABLE doctor_speicail  (
speicail_number INT , 
speicail_name VARCHAR(100) ,


CONSTRAINT ADD PRImain_billMARY KEY(speicail_number)

) 

CREATE TABLE main_bill  (
main_bill_number int ,
main_bill_date DATE , 




CONSTRAINT ADD PRIMARY KEY(main_bill_number)

) 
ALTER TABLE take ADD detailed_bill_number int FOREIGN KEY(detailed_bill_number)
CREATE TABLE services  (
services_number int ,
services_name VARCHAR(100) , 
service_price INT,


CONSTRAINT ADD PRIMARY KEY(services_number)

)


CREATE TABLE take  (
take_number int ,
take_time VARCHAR(100) , 
take_state VARCHAR(100),
take_resuilts VARCHAR(100),

CONSTRAINT ADD PRIMARY KEY(take_number)

)


ALTER TABLE take ADD ill_id int FOREIGN KEY(ill_id)
ALTER TABLE take ADD doctor_number int FOREIGN KEY(doctor_number)
ALTER TABLE take ADD department_number int FOREIGN KEY(department_number)
ALTER TABLE take ADD main_bill_number int FOREIGN KEY(main_bill_number)


 



