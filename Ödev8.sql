-- 1) test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.

/*CREATE TABLE employee(
	id SERIAL NOT NULL,
	name VARCHAR(50) NOT NULL,
	birthday DATE,
	email VARCHAR(100)
);*/

-- 2) Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
/*insert into employee (name, birthday, email) values ('Iolande', '2000-02-10', 'icottisford0@blogspot.com');
insert into employee (name, birthday, email) values ('D''arcy', '2017-04-17', 'dlangrish1@elegantthemes.com');
insert into employee (name, birthday, email) values ('Odille', '2022-10-28', 'ocasseldine2@google.it');
insert into employee (name, birthday, email) values ('Fleming', '2017-10-22', null);
insert into employee (name, birthday, email) values ('Anatol', '2017-09-11', 'acrossley4@weibo.com');
insert into employee (name, birthday, email) values ('Felita', '2004-11-01', 'fhalfhyde5@un.org');
insert into employee (name, birthday, email) values ('Brigg', '2000-07-10', 'bkigelman6@amazon.co.uk');
insert into employee (name, birthday, email) values ('Glenine', null, 'gmckiernan7@psu.edu');
insert into employee (name, birthday, email) values ('Fransisco', '2005-11-03', 'ffayre8@dedecms.com');
insert into employee (name, birthday, email) values ('Lucie', '2007-07-13', 'lhaddon9@gov.uk');
insert into employee (name, birthday, email) values ('Pavlov', '2002-09-01', null);
insert into employee (name, birthday, email) values ('Riordan', '2021-10-10', 'rfilipczynskib@skyrock.com');
insert into employee (name, birthday, email) values ('Shaina', '2008-11-22', 'sdeniskec@friendfeed.com');
insert into employee (name, birthday, email) values ('Morley', '2005-11-21', null);
insert into employee (name, birthday, email) values ('Seumas', '2005-10-25', 'sleivesleye@163.com');
insert into employee (name, birthday, email) values ('Briant', '2014-01-23', null);
insert into employee (name, birthday, email) values ('Valeda', '2006-03-16', null);
insert into employee (name, birthday, email) values ('Andrus', '2006-07-13', 'atalesh@narod.ru');
insert into employee (name, birthday, email) values ('Jackie', '2010-11-02', 'jpickoveri@1und1.de');
insert into employee (name, birthday, email) values ('Lulita', '2005-02-22', 'lmolandj@elegantthemes.com');
insert into employee (name, birthday, email) values ('Larina', '2019-08-09', null);
insert into employee (name, birthday, email) values ('Constantin', '2012-09-07', 'chawsel@pcworld.com');
insert into employee (name, birthday, email) values ('Bruno', '2022-12-17', 'bboultm@simplemachines.org');
insert into employee (name, birthday, email) values ('Ilysa', '2015-03-04', 'icaltunn@edublogs.org');
insert into employee (name, birthday, email) values ('Danica', '2015-03-16', null);
insert into employee (name, birthday, email) values ('Gino', '2003-12-12', 'glawrencesonp@com.com');
insert into employee (name, birthday, email) values ('Raff', '2014-08-04', 'rsibbaldq@google.co.uk');
insert into employee (name, birthday, email) values ('Sarita', '2005-10-13', 'sscurrahr@statcounter.com');
insert into employee (name, birthday, email) values ('Vladamir', '2004-10-10', 'vcurzeys@dion.ne.jp');
insert into employee (name, birthday, email) values ('Codie', null, null);
insert into employee (name, birthday, email) values ('Sella', '2013-07-05', 'sleeru@csmonitor.com');
insert into employee (name, birthday, email) values ('Jolynn', '2014-05-16', 'jjoulesv@hc360.com');
insert into employee (name, birthday, email) values ('Emery', '2009-06-27', null);
insert into employee (name, birthday, email) values ('Donica', '2014-08-18', 'dstreatfeildx@meetup.com');
insert into employee (name, birthday, email) values ('Alexis', '2009-02-06', 'abambricky@biglobe.ne.jp');
insert into employee (name, birthday, email) values ('Carmine', '2007-04-08', 'cmilnez@sitemeter.com');
insert into employee (name, birthday, email) values ('Susi', '2021-12-20', 'sshouler10@theguardian.com');
insert into employee (name, birthday, email) values ('Hunter', '2013-09-06', 'hhaig11@blinklist.com');
insert into employee (name, birthday, email) values ('Priscilla', '2008-12-30', null);
insert into employee (name, birthday, email) values ('Konrad', '2021-06-27', 'kmacsharry13@boston.com');
insert into employee (name, birthday, email) values ('Bertrando', '2014-09-07', null);
insert into employee (name, birthday, email) values ('Cassaundra', null, null);
insert into employee (name, birthday, email) values ('Caron', null, 'cgourlay16@google.ru');
insert into employee (name, birthday, email) values ('Scarlet', '2000-08-08', 'slaverick17@pinterest.com');
insert into employee (name, birthday, email) values ('Coletta', '2005-06-06', 'cpitman18@aol.com');
insert into employee (name, birthday, email) values ('Emma', '2013-07-27', 'egwynne19@hp.com');
insert into employee (name, birthday, email) values ('Wiley', '2021-07-27', 'wbruhnke1a@e-recht24.de');
insert into employee (name, birthday, email) values ('Annmaria', '2006-11-19', 'abulbeck1b@rambler.ru');
insert into employee (name, birthday, email) values ('Mommy', '2022-01-07', 'mkinkead1c@dedecms.com');
insert into employee (name, birthday, email) values ('Aland', '2012-08-05', 'abrisland1d@dyndns.org');
*/
 -- 3) Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.

UPDATE employee
SET name = 'Osman',
	birthday = '2000-08-27',
	email ='asdasdas@gmail.com'
WHERE id = 5;

-- 4) Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
DELETE FROM employee
WHERE id = 5
RETURNING *;



