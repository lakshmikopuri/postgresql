#data insert into table
INSERT INTO
  company(id, name, salary, age)
VALUES
  (7, "lucky", 100, 20),
  (5, "nikki", 20, 30);
  
 # inserting data into another way
  INSERT INTO
  company
VALUES
  (7, "lucky", 100, 20),
  (8, "revathi", 10, 33),
  (5, "nikki", 20, 30);
  
  # retrving data using select clause
  SELECT
  *
FROM
  company
  #where
  SELECT
  name
FROM
  company
WHERE
  age = 20;
  
 SELECT
  name
FROM
  company
WHERE
  age != 20;
  
  SELECT
  name
FROM
  company
WHERE
  age <> 20;
  
 SELECT
  name
FROM
  company
WHERE
  age > 20;
  
  SELECT
  name
FROM
  company
WHERE
  age < 20;
  #where cluse using logical operators
  
  
  SELECT
  name
FROM
  company
WHERE
  age > 20
  AND salary >= 2000;
  
  
  SELECT
  name
FROM
  company
WHERE
  age > 20
  OR salary >= 2000;
  
  SELECT
  *
FROM
  company
WHERE
  name LIKE "%l";
  
  
  SELECT
  *
FROM
  company
WHERE
  name LIKE "%i";
  
  
  SELECT
  *
FROM
  company
WHERE
  age IN ('20', '30', '33');
  
  
  
  SELECT
  *
FROM
  company
WHERE
  age BETWEEN 20
  AND 90;
  
  
  # for comments we are using 1)--  2)/* lucky */
  
  
  
  
  # using alias
  SELECT
  name AS employe_name
FROM
  company;
  
  #count
  SELECT
  count(*)
FROM
  company;
  
  #max
  SELECT
  max(age)
FROM
  company;
 #min
 SELECT
  min(age)
FROM
  company;
  #sum
  SELECT
  sum(salary)
FROM
  company;
  # to know the current time 
  SELECT
  CURRENT_TIMESTAMP;
  
  # check constain
  CREATE TABLE product (
  product_no int,
  name text,
  price numeric CHECK (price > 0),
  discount_price numeric CHECK(discount_price > 0)
);

#
CREATE TABLE product1 (
  product_no int,
  name text,
  price numeric CHECK (price > 0),
  discount_price numeric CHECK(discount_price > 0),
  CHECK(price > discount_price)
);
INSERT INTO
  product1
VALUES
  (2, "soap", 10, -4);# error bcoz less than 0 in discuntpric 
  
  INSERT INTO
  product1
VALUES
  (2, "soap", 10, 12);# price>discount condition failed
  
  
  
  # primary key
  CREATE TABLE product(
  product_no int PRIMARY KEY,
  name text,
  price numeric
);
INSERT INTO
  product
VALUES
  (1, "sopa", 10);
  
  INSERT INTO
  product
VALUES
  (1, "paste", 99);# error occurs bcoz of uniqe constain
  
  INSERT INTO
  product
VALUES
  (4, "sopa", 10);
  
  
  
  # primary key,forgien key
CREATE TABLE orders(
  order_id int PRIMARY KEY,
  product_no int REFERENCES product(product_no),
  quantity int
);
INSERT INTO
  orders
VALUES
  (2, 4, 2); # if in place of 4 if i enter 3 it shows unique constains error bcoz 3 not inthe product-no list
  #multipul for primary
  #alter for adding another column
  
  ALTER TABLE
  employee
ADD
  age int;
  #update
  UPDATE
  employee
SET
  age = 30
WHERE
  name = "Raju";
  
  #delete
  DELETE FROM
  employee
WHERE
  name = "Ramu";
  
  #limit it only provied the result upto limt value
  SELECT
  *
FROM
  employee
LIMIT
  2;
  #offset it is use to  specify the position from where the rows are to be seleted
  SELECT
  *
FROM
  employee
LIMIT
  2 OFFSET 1;
  
  
  # group by (grp rows of all players together
  SELECT
  age,
  count(*)
FROM
  employee
GROUP BY
  age;
  ###### grup by having
  CREATE TABLE players (
  name text,
  fiftys int,
  hundred int,
  team text
);
INSERT INTO
  players
VALUES
  ("virat", 70, 800, "rcb"),
  ("msd", 20, 60, "csk"),
  ("shaw", 70, 100, "dc");
  
 SELECT
  name,
  count(*)
FROM
  players
GROUP BY
  name
HAVING
  fiftys > 50;
  
  #order
  SELECT
  *
FROM
  players
ORDER BY
  name;
  
  # order by desc
  
  SELECT
  *
FROM
  players
ORDER BY
  fiftys DESC;
  #ase
  
 #json data ....we can retrive this data from server
 INSERT INTO
  jsondata1
VALUES
  (
    1,
    '{" name " :" lucky ",
    " addres ": { " lanel " :" gudivada " 
    " lanes2 " :" hyd " 
    " pincode " :" 2334 " }
    }'
  );
  SELECT
  doc -> 'addres' ->> 'pincode'

FROM
  jsondata1;
  
  SELECT
  doc #>> '(addres,pincode)'
FROM
  jsondata1
WHERE
  id = 1;
 #arrays
 CREATE 
 
TABLE sal_emp(name text, pay int [], schedule text [] []);
INSERT INTO
  sal_emp
VALUES
  (
    "kushi",
    '{2400,25000,2900,1000}',
    '{{"meeting","dinner"},
{"walk","presentation"}}'
  );
  
  UPDATE
  sal_emp
SET
  pay = '{250000,885045,6999,334}'
WHERE
  name = "rahul";
  
  #update using index
  UPDATE
  sal_emp
SET
  pay [3] = 20000
WHERE
  name = "rahul";
  
  UPDATE
  sal_emp
SET
  pay [1:2] = '{2000,2000}'
WHERE
  name = "rahul";
  #arry searching
  SELECT
  *
FROM
  sal_emp
WHERE
  pay [1] = 2400
  OR p [2] = 10000;
  
  #mathmetic fun
  
  SELECT
  ceil(45.7)
  SELECT
  floor(45.7)
  
  SELECT
  degrees(45.7)
  
  SELECT
  abs(45.7)
  
SELECT
  ln(2.0);
  
  
SELECT
  log(2.0);
  
SELECT
  pi();
  
 select round(42.4);
 select round(45.6897667,2);
 select sign(+9.8);
 select sign(-9.8);
 select random();
 select cos(30);
 
 #string fun
 SELECT
char_length('hello'); 
  
  SELECt 
lower('HELLO');

SELECt UPPER('hello');
SELECt substr('helloiii',2,4);
SELECt position('th' in 'thanks');
SELECt ascii('x');
select concat('luvk',2,null,2);
select initcap('hi hello');
select repeat('hi hello',2);
select reverse('hello');
  
  
 #aggregate
SELECT
  max(salary)
FROM
  employee
  
  SELECT
  count(*)
FROM
  employee
  
  SELECT
  min(salary)
FROM
  employee
  
  
  SELECT
  avg(salary)
FROM
  employee
  
  SELECT
  sum(salary)
FROM
  employee
  
  #aggregate fun in psql
  
  SELECT
  array_agg(name)
FROM
  employee;
SELECT
  json_agg(name)
FROM
  employee;
  
  SELECT
  json_object_agg(name,dept)
FROM
  employee;

  
  #standed deviation
  
  SELECT stddev(empid) FROM EMPLOYEE;
#varience
SELECT variance(empid) FROM EMPLOYEE;

SELECT mode() within group(order by empid) FROM EMPLOYEE;
SELECT * from EMPLOYEE;
#like
SELECT
  *
FROM
  employee
WHERE
  name LIKE "r%";
  SELECT
  *
FROM
  employee
WHERE
  name LIKE "_a%i";
  SELECT
  *
FROM
  employee
WHERE
  name LIKE "R_%_%_%";
  
 #cross join(each nd every row in 1st table matches wth each nd every row of 2nd table)
 SELECT
  employee_id,
  salary
FROM
  employee
  CROSS JOIN players;
 #inner join
 SELECT
  name,age,dept
FROM
  company
  INNER JOIN department on comapny.id=department.id;
  
  SELECT
  name,age,dept
FROM
  company c,
 department d where c.id=d.id
 #left right  full outer 
  
 SELECT
  age
FROM
  company
  LEFT OUTER JOIN employee ON company.id = employee.employee_id;
  
  SELECT
  age
FROM
  company FULL
  OUTER JOIN employee ON company.id = employee.employee_id; 
  
  #alias 
  SELECT
  age
FROM
  company c,
  employee D
WHERE
  c.id = d.employee_id;
  
  
  
  
  #view
  CREATE VIEW company_view AS
SELECT
  id,
  name,
  age
FROM
  company;
  
  
 #union (doesnt allow duplicates rows)
 SELECT
  age
FROM
  company
  LEFT OUTER JOIN employee ON company.id = employee.employee_id
UNION
SELECT
  age
FROM
  company
  INNER JOIN employee ON company.id = employee.employee_id; 
  
  
 #union all(its allow duplicate rows also
 SELECT
  age
FROM
  company
  LEFT OUTER JOIN employee ON company.id = employee.employee_id
UNION
ALL
SELECT
  age
FROM
  company
  INNER JOIN employee ON company.id = employee.employee_id;
  #subquary
  
  SELECT
  *
FROM
  company
WHERE
  age IN (
    SELECT
      age
    FROM
      company
    WHERE
      salary > 30
  )
  #update 
  UPDATE
  company
SET
  salary = salary * 1.505
WHERE
  age IN (
    SELECT
      age
    FROM
      company
    WHERE
      salary > 30
  )
  
  #view
  CREATE VIEW user_base_details AS 
SELECT id, name, age, gender, pincode
FROM user; 

  SELECT
  name
FROM
  user_base_details
WHERE
  age > 20
ORDER BY
  age ASC;
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
