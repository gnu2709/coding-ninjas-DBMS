Problem Statement:
Make a Clone of the product table(with complete data) and name it to be giftList and print the table schema in ascending order of column name as well.

Information about the tables:
Given below is a database of a newly established e-commerce website. 
The database contains multiple tables i.e. products, orders, and transactions. 
The information about required tables is given below

Table product:
Attributes list:
    Attributes   |  Data Type
      item_id    |   INT (PRIMARY KEY)
     product_id  |   INT
       pname     |   VARCHAR(225)
      instock    |   CHAR
       price     |   DOUBLE
    arrival_days |   INT
       seller    |   VARCHAR(225)
       youSave   |   DOUBLE

Data list:
+---------+------------+-------------------------------------------------------------------------+---------+----------+--------------+----------------------------+---------+
| item_id | product_id | p_name                                                                  | inStock | price    | arrival_days | seller                     | youSave |
+---------+------------+-------------------------------------------------------------------------+---------+----------+--------------+----------------------------+---------+
|       1 |       7556 | Iphone 11 (128GB)                                                       | N       | 51300.05 |            5 | Maple Store                |    3600 |
|       2 |       2223 | optimum whey protien                                                    | Y       |     1614 |            7 | Cloudtail India            |     245 |
|       3 |       7556 | Iphone 11 (128GB)                                                       | Y       |    53500 |            4 | Kukreja Telecom Store      |    1400 |
|       4 |       6754 | Inalsa Electric Kettle Absa (Black/Silver)                              | Y       |      591 |            9 | k3stores                  |   10040 |
|       5 |         99 | Mini organising tech kit                                                | Y       |     1400 |            2 | dailyen                    |     200 |
|       6 |       7777 | OnePlus 9 Pro 5G (256GB)                                                | Y       |    65999 |            2 | Darshita Etel              |    4000 |
|       7 |       5454 | Iphone 11 (64GB)                                                        | Y       |    46999 |            3 | Maple Store                |    3000 |
|       8 |       4324 | Women's Cotton Blend Straight Kurti with Palazzos                       | Y       |      549 |           10 | Maxx Store                 |    1000 |
|       9 |       5655 | Redmi 9 Activ (128GB)                                                   | N       |    10999 |            3 | Darshita Electronics       |     200 |
|      10 |       9753 | OnePlus Buds Z                                                          | N       |     2999 |            3 | Appario Retail Private Ltd |     191 |
|      11 |       7777 | OnePlus 9 Pro 5G (256GB)                                                | Y       |    65999 |            2 | Darshita Etel              |    4000 |
|      12 |       6477 | Ikigai: The Japanese secret to a long and happy life                    | Y       |      427 |            3 | Cloudtail India            |     123 |
|      13 |       7556 | Iphone 11 (128GB)                                                       | N       | 51300.05 |            5 | Maple Store                |    3600 |
|      14 |       1111 | Solimo Trance High Back Mesh Contemporary Office Chair (Black)          | Y       |     7599 |            4 | Cloudtail India            |    5901 |
|      15 |       2222 | Nayasa 2 in 1 Dustbin - Dry Waste and Wet Waste Dustbin (33 Ltrs) - Big | Y       |     1339 |            7 | Cloudtail India            |     189 |
|      16 |       5555 | Ben Martin Men's Relaxed Jeans                                          | N       |      698 |           12 | Maxx Store                 |     100 |
|      17 |       7777 | OnePlus 9 Pro 5G (256GB)                                                | Y       |    65999 |            2 | Darshita Etel              |    4000 |
|      18 |       6754 | Inalsa Electric Kettle Absa (Black/Silver)                              | Y       |      591 |            9 | k3stores                   |   10040 |
|      19 |       2223 | optimum whey protien                                                    | Y       |     1614 |            7 | Cloudtail India            |     245 |
|      20 |        529 | MI Mobile cover                                                         | Y       |      999 |            5 | dailyen                    |     500 |
|      21 |       5655 | Redmi 9 Activ (128GB)                                                   | N       |    10999 |            3 | Darshita Electronics       |     200 |
|      22 |       7556 | Iphone 11 (128GB)                                                       | Y       |    54900 |            7 | Sunil mobile Store         |       0 |
|      23 |       9753 | OnePlus Buds Z                                                          | N       |     4000 |            5 | sekhri telecoms            |     200 |
|      24 |       5454 | Iphone 11 (64GB)                                                        | Y       |    43999 |            7 | imagine store              |    6000 |
+---------+------------+-------------------------------------------------------------------------+---------+----------+--------------+----------------------------+---------+

Note : Command to print table schema:-
SELECT table_name, column_name, data_type
FROM information_schema.columns
WHERE table_name = 'table_name';

Solution:
create table giftlist like product;
insert into giftlist select * from product;

select table_name, column_name, data_type from information_schema.columns
where table_name = 'giftlist';

Output:
+------------+--------------+-----------+
| TABLE_NAME | COLUMN_NAME  | DATA_TYPE |
+------------+--------------+-----------+
| giftlist   | arrival_days | int       |
| giftlist   | inStock      | char      |
| giftlist   | item_id      | int       |
| giftlist   | p_name       | varchar   |
| giftlist   | price        | double    |
| giftlist   | product_id   | int       |
| giftlist   | seller       | varchar   |
| giftlist   | youSave      | double    |
+------------+--------------+-----------+