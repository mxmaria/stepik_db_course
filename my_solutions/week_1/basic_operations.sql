/* 
Выведите поступления денег от пользователя с email 'vasya@mail.com'.
В результат включите все столбцы таблицы и не меняйте порядка их вывода.
*/

SELECT * 
  FROM billing
 WHERE payer_email = 'vasya@mail.com'

/*
Добавьте в таблицу одну запись о платеже со следующими значениями:
email плательщика: 'pasha@mail.com'
email получателя: 'katya@mail.com'
сумма: 300.00
валюта: 'EUR'
дата операции: 14.02.2016
комментарий: 'Valentines day present)'
*/

INSERT INTO 
billing(`payer_email`,`recipient_email`,`sum`,`currency`,`billing_date`,`comment`) 
VALUES 
('pasha@mail.com','katya@mail.com','300.00','EUR','2016.02.14','Valentines day present)');

/*
Измените адрес плательщика на 'igor@mail.com' для всех записей таблицы, где адрес плательщика 'alex@mail.com'.
*/

UPDATE billing
   SET payer_email='igor@mail.com'
 WHERE payer_email='alex@mail.com';

/*
Удалите из таблицы записи, где адрес плательщика или адрес получателя установлен в неопределенное значение или пустую строку.
*/

DELETE FROM billing
      WHERE payer_email IS NULL OR payer_email=''
            OR recipient_email IS NULL OR recipient_email='';

