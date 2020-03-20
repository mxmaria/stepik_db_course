/*
Добавить таблицу 'best_offer_sale' со следующими полями:
Название: `id`, тип данных: INT, возможность использования неопределенного значения: Нет, первичный ключ
Название: `name`, тип данных: VARCHAR(255), возможность использования неопределенного значения: Да
Название: `dt_start`, тип данных: DATETIME, возможность использования неопределенного значения: Нет
Название: `dt_finish`, тип данных: DATETIME, возможность использования неопределенного значения: Нет
/*

CREATE TABLE 'best_offer_sale'(
         `id` INT NOT NULL,
       `name` VARCHAR(255) NULL,
   `dt_start` DATETIME NOT NULL,
  `dt_finish` DATETIME NOT NULL,
 PRIMARY KEY (`id`));

/*
Удалите из таблицы 'client' поля 'code' и 'source_id'.
/*

     ALTER TABLE 'client'
DROP FOREIGN KEY fk_client_source1,
     DROP COLUMN 'code',
     DROP COLUMN 'source_id';

/*
Удалите таблицу 'source'.
/*

DROP TABLE 'source';

/*
Добавьте в таблицу 'sale_has_good' следующие поля:
Название: `num`, тип данных: INT, возможность использования неопределенного значения: Нет
Название: `price`, тип данных: DECIMAL(18,2), возможность использования неопределенного значения: Нет
/*

ALTER TABLE 'sale_has_good'
 ADD COLUMN `num` INT NOT NULL,
 ADD COLUMN `price` DECIMAL(18,2) NOT NULL;

 /*
 Добавьте в таблицу 'client' поле 'source_id' тип данных: INT, возможность использования неопределенного значения: Да.
 Для данного поля определите ограничение внешнего ключа как ссылку на поле 'id' таблицы 'source'.
 /*

   ALTER TABLE 'client'
    ADD COLUMN `source_id` INT NULL,
ADD CONSTRAINT  `fk_source_id` FOREIGN KEY (`source_id`) REFERENCES source(`id`);