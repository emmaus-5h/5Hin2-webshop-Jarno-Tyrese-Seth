--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  rating_id INTEGER,
  zwaarte_id NUMERIC(11, 3),
  chest_id INTEGER,
  back_id INTEGER,
  legs_id INTEGER
);

CREATE TABLE ratings (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR (250)
);

CREATE TABLE zwaarte (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  ratingname TEXT
);  

 CREATE TABLE chest (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  ratingname TEXT
); 

CREATE TABLE back (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  ratingname TEXT
);  

 CREATE TABLE legs (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  ratingname TEXT
); 
--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description,  code, price, ratings_id) values ('sjeen weights', 'de sjeen weights limited edition zijn comfortabel en gemaakt van de stenen van gestolde lava van de sjeen empire','1', '816905633-0', 3000, 1);
insert into products (name, description,  code, price) values ('Gorilla Bench Press', 'bench press gemaakt voor echte gorillas ', '077030122-3', 500);
insert into products (name, description,  code, price) values ('Force Pull up Band', 'force band die je helpt met pull ups opbouwen', '445924201-X', 300);
insert into products (name, description, code, price) values ('Bazooka Campered Bar', 'deze campered bar laat je biceps pump eruit zien als bazookas', '693155505-7', 250);
insert into products (name, description,  code, price) values ('Explosive Proteine Shakes', 'deze explosieve shakes geven je na een work-out de meeste proteine om te bulken', '686928463-6', 10);
insert into products (name, description,  code, price) values ('Kangeroe Leg Press Machine', 'na het gebruiken van deze leg press gaan je benen even sterk zijn als die van een kangeroe', '492662523-7', 1000);
insert into products (name, description, code, price) values ('Superman Squad Bar', 'deze superman squad bar in combinatie met de kangeroe leg press krijg je het beste resultaat voor bij je benen', '492662523-7', 6000);
insert into products (name, description,  code, price) values ('Hulk Chest Press Machine', 'wil jij ook een chest zoals de hulk, koop dan dit product!', '492662523-7', 5000);
insert into products (name, description, code, price, rating_id) values ('Ultimate Sjeen Weights', 'een verbeterde versie van de originele sjeen weights. wanneer je deze sjeen weights heb gebruikt dan verander je in een Giga Chad Greek God!', '492662523-7', 100000, 1);

insert into ratings (name) values ('beste weights ooit!');
insert into ratings (name) values ('ik heb veel progressie gezien');
insert into ratings (name) values ('echt een aanrader');