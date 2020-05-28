INSERT INTO Game(game_name,year) VALUES('Biomutant',2018);
INSERT INTO Game(game_name,year) VALUES('Biomutant',2019);
INSERT INTO Game(game_name,year) VALUES('FIFA 18',2017);


INSERT INTO Genre(genre_name) VALUES('Action');
INSERT INTO Genre(genre_name) VALUES('Sports');


INSERT INTO Publisher(publisher_name) VALUES('THQ Nordic');
INSERT INTO Publisher(publisher_name) VALUES('EA Sport');

INSERT INTO Region(region_name) VALUES ('North_America');
INSERT INTO Region(region_name) VALUES ('Europe');
INSERT INTO Region(region_name) VALUES ('Japan');
INSERT INTO Region(region_name) VALUES ('Rest_of_world');


INSERT INTO Game_genre(game_name,year,genre_name) VALUES('Biomutant',2018,'Action');
INSERT INTO Game_genre(game_name,year,genre_name) VALUES('Biomutant',2019,'Action');
INSERT INTO Game_genre(game_name,year,genre_name) VALUES('FIFA 18',2017,'Sports');


INSERT INTO Game_publisher(game_name,year,publisher_name) VALUES('Biomutant',2018,'THQ Nordic');
INSERT INTO Game_publisher(game_name,year,publisher_name) VALUES('Biomutant',2019,'THQ Nordic');
INSERT INTO Game_publisher(game_name,year,publisher_name) VALUES('FIFA 18',2017,'EA Sport');


INSERT INTO Sales_region(game_name,year,region_name,sales) VALUES('Biomutant',2018,'North_America',2.03);
INSERT INTO Sales_region(game_name,year,region_name,sales) VALUES('Biomutant',2018,'Europe',3.01);
INSERT INTO Sales_region(game_name,year,region_name,sales) VALUES('Biomutant',2018,'Japan',1.07);
INSERT INTO Sales_region(game_name,year,region_name,sales) VALUES('Biomutant',2018,'Rest_of_world',4.04);
INSERT INTO Sales_region(game_name,year,region_name,sales) VALUES('Biomutant',2019,'North_America',1.03);
INSERT INTO Sales_region(game_name,year,region_name,sales) VALUES('Biomutant',2019,'Europe',2.05);
INSERT INTO Sales_region(game_name,year,region_name,sales) VALUES('Biomutant',2019,'Japan',0.43);
INSERT INTO Sales_region(game_name,year,region_name,sales) VALUES('Biomutant',2019,'Rest_of_world',3.02);
INSERT INTO Sales_region(game_name,year,region_name,sales) VALUES('FIFA 18',2017,'North_America',4.03);
INSERT INTO Sales_region(game_name,year,region_name,sales) VALUES('FIFA 18',2017,'Europe',3.76);
INSERT INTO Sales_region(game_name,year,region_name,sales) VALUES('FIFA 18',2017,'Japan',2.07);
INSERT INTO Sales_region(game_name,year,region_name,sales) VALUES('FIFA 18',2017,'Rest_of_world',5.04);


INSERT INTO Customer(id_customer,customer_name) VALUES (1,'Bob');
INSERT INTO Customer(id_customer,customer_name) VALUES (2,'Boba');
INSERT INTO Customer(id_customer,customer_name) VALUES (3,'Boban');


INSERT INTO Sales_customer(id_customer,customer_name,game_name,year,price,discount,discounted_price)
VALUES(1,'Bob','Biomutant',2018,108,4,103.68);
INSERT INTO Sales_customer(id_customer,customer_name,game_name,year,price,discount,discounted_price)
VALUES(1,'Bob','Biomutant',2019,200,5,190);
INSERT INTO Sales_customer(id_customer,customer_name,game_name,year,price,discount,discounted_price)
VALUES(3,'Boban','FIFA 18',2017,90,10,81);





