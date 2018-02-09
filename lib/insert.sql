-- 2 series
-- 2 sub-genres
-- 2 authors
-- 3 books in each series
-- 8 characters
-- 4 characters in each series
-- of each of those 4, make 2 in all of the books in a series, and 2 in just 1 book in a series
-- Note you will need to insert values into your character_books join table
INSERT INTO series(id,title,author_id,subgenre_id) VALUES(1,"Star Treks",1,1);
INSERT INTO series(id,title,author_id,subgenre_id) VALUES(2,"Lord of the Ring",2,2);

INSERT INTO books(id,title,year,series_id) VALUES (1,"Trek Spock",1979,1);
INSERT INTO books(id,title,year,series_id) VALUES (2,"Trek Tribbles",1980,1);
INSERT INTO books(id,title,year,series_id) VALUES (3,"Trek Will",1981,1);
INSERT INTO books(id,title,year,series_id) VALUES (4,"Middle Ring",1930,2);
INSERT INTO books(id,title,year,series_id) VALUES (5,"Mountain Ring",1941,2);
INSERT INTO books(id,title,year,series_id) VALUES (6,"Power Ring",1951,2);

INSERT INTO characters(id,name,motto,species,author_id,series_id) VALUES(1,"Spock","...","Vulcan",1,1);
INSERT INTO characters(id,name,motto,species,author_id,series_id) VALUES(2,"Ryker","WOW Im enhanced","Cyborg",1,1);
INSERT INTO characters(id,name,motto,species,author_id,series_id) VALUES(3,"Han Solo","Get me outta here","Human",1,1);
INSERT INTO characters(id,name,motto,species,author_id,series_id) VALUES(4,"Scotty","I canna give you more Capn","Human",1,1);
INSERT INTO characters(id,name,motto,species,author_id,series_id) VALUES(5,"ElfLord","I am your arrow king","elf",2,2);
INSERT INTO characters(id,name,motto,species,author_id,series_id) VALUES(6,"LittleGuy","WHY AM I HERE!","hobbit",2,2);
INSERT INTO characters(id,name,motto,species,author_id,series_id) VALUES(7,"Wiz","STOP","Human",2,2);
INSERT INTO characters(id,name,motto,species,author_id,series_id) VALUES(8,"Harry","Patronus","Human",2,2);

INSERT INTO subgenres(id,name) VALUES (1,"Space");
INSERT INTO subgenres(id,name) VALUES (2,"Friendship Travels");

INSERT INTO authors(id,name) VALUES (1,"William Shatner");
INSERT INTO authors(id,name) VALUES (2,"Buzz Aldrin");

INSERT INTO character_books(id,book_id,character_id) VALUES(1,1,1);
INSERT INTO character_books(id,book_id,character_id) VALUES(2,1,2);
INSERT INTO character_books(id,book_id,character_id) VALUES(3,1,3);
INSERT INTO character_books(id,book_id,character_id) VALUES(4,1,4);
INSERT INTO character_books(id,book_id,character_id) VALUES(5,2,1);
INSERT INTO character_books(id,book_id,character_id) VALUES(6,2,2);
INSERT INTO character_books(id,book_id,character_id) VALUES(7,3,3);
INSERT INTO character_books(id,book_id,character_id) VALUES(8,3,4);
INSERT INTO character_books(id,book_id,character_id) VALUES(9,4,5);
INSERT INTO character_books(id,book_id,character_id) VALUES(10,4,6);
INSERT INTO character_books(id,book_id,character_id) VALUES(11,4,7);
INSERT INTO character_books(id,book_id,character_id) VALUES(12,4,8);
INSERT INTO character_books(id,book_id,character_id) VALUES(13,5,1);
INSERT INTO character_books(id,book_id,character_id) VALUES(14,5,2);
INSERT INTO character_books(id,book_id,character_id) VALUES(15,6,3);
INSERT INTO character_books(id,book_id,character_id) VALUES(16,6,4);
