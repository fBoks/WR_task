<h1>Веб-приложение "Гостевая книга"</h1>

---

<h3>Функционал</h3>

Функционал приложения следующий:
- Регистрация.
- Авторизация.
- Оставление сообщений.
- Удаление сообщений.
- Капча.
- Просмотр подробной информации о пользователе.

Оставлять и удалять сообщения могут только авторизованные пользователи.
Пользователь может удалить только своё сообщение.

Проверка капчи присутствует при регистрации, авторизации и отправке сообщений.

Просмотр подробной информации о пользователях доступен только авторизованным пользователям.

---

<h3>Обратная связь</h3>

Отображаются всплывающие подсказки в полях ввода при регистрации, а также при наведении на дату сообщения в таблице.

Для просмотра подробной информации о пользователе, необходимо нажать на его имя в строке таблицы.
Для просмотра точной даты сообщения, необходимо навести курсор на соответствующую дату в строке таблицы.

При отправке форм, - сообщение, авторизация, регистрация, - отображается предупреждение, если обязательные поля не заполнены.
Также, предусмотрены подсказки, какого формата данные нужно вводить в определенные поля.

Все важные действия пользователя сопровождаются всплывающими сообщениями, вверху страницы.
Перед удалением сообщения появляется окно с подтверждением действия.

---

<h3>Фильтрация</h3>

Реализована сортировка сообщений в таблице по столбцам "Пользователь", "Email" и "Дата" по убыванию/возрастанию.
Для этого необходимо нажать на соответствующий заголовок столбца.
Для отмены сортировки необходимо нажать кнопку "Сбросить фильтр" справа вверху от таблицы.

---

<h3>База данных</h3>

Дамп базы данных находится в файле white_rabbit.sql

При заполнении базы тестовыми данными, даты сообщений ставятся рандомными и никак не связаны с id.
Поэтому у последнего сообщения дата может быть позже, чем у первого.
По умолчанию, сортировка сообщений в таблице, без фильтров - по id сообщения, в порядке убывания.
