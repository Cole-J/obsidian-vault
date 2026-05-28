not exists and except

SELECT column_name(s) FROM table1 WHERE NOT EXISTS ( SELECT 1 FROM table2 WHERE table1.id = table2.id );

SELECT column_name(s) FROM table1 EXCEPT SELECT column_name(s) FROM table2;