# language: ru

# Тестовые данные:
  # $Наименование Манго
  # $Тип FRUIT
  # $Экзотический 1

Функция: Добавление товаров в БД

  Сценарий: Добавление через БД товара по классу exotic = true
    * к БД выполнено подключение "H2" с параметрами:
      | field        | value |
      | Пользователь | user  |
      | Пароль       | pass  |
    * к БД выполняется запрос "Перечень продуктов"
    * количество элементов коллекции "Перечень продуктов" не равно нулю
    * количество элементов коллекции "Перечень продуктов" не равно нулю
    * к БД выполняется запрос "Добавление Товара" c параметрами:
      | field        | value           |
      | Наименование | #{Наименование} |
      | Тип          | #{Тип}          |
      | Экзотичность | #{Экзотический} |
    * из БД выбирается строка запросом "Получение данных о товаре" c параметрами:
      | field        | value           |
      | Наименование | #{Наименование} |
      | Тип          | #{Тип}          |
      | Экзотичность | #{Экзотический} |
    * к БД выполняется запрос "Удаление товара" c параметрами:
      | field        | value           |
      | Наименование | #{Наименование} |
      | Тип          | #{Тип}          |
      | Экзотичность | #{Экзотический} |
    * закрыто подключение к БД