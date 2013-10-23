-- SQL Manager Lite for PostgreSQL 5.3.0.1
-- ---------------------------------------
-- Host      : localhost
-- Database  : alfero
-- Version   : PostgreSQL 9.1.3, compiled by Visual C++ build 1500, 64-bit



SET check_function_bodies = false;
--
-- Definition for sequence client_id_seq (OID = 24682) : 
--
SET search_path = public, pg_catalog;
CREATE SEQUENCE public.client_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence comment_id_seq (OID = 24684) : 
--
CREATE SEQUENCE public.comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence product_id_seq (OID = 24686) : 
--
CREATE SEQUENCE public.product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence product_category_id_seq (OID = 24688) : 
--
CREATE SEQUENCE public.product_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence product_settings_id_seq (OID = 24690) : 
--
CREATE SEQUENCE public.product_settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence user_id_seq (OID = 24692) : 
--
CREATE SEQUENCE public.user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence user_role_id_seq (OID = 24694) : 
--
CREATE SEQUENCE public.user_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table client (OID = 24696) : 
--
CREATE TABLE public.client (
    id integer NOT NULL,
    name text,
    type text
)
WITH (oids = false);
--
-- Structure for table role (OID = 24699) : 
--
CREATE TABLE public.role (
    id integer NOT NULL,
    role text
)
WITH (oids = false);
--
-- Structure for table users (OID = 24702) : 
--
CREATE TABLE public.users (
    id integer NOT NULL,
    login text,
    password text,
    email text,
    first_name text,
    last_name text,
    enabled boolean
)
WITH (oids = false);
--
-- Structure for table category (OID = 24705) : 
--
CREATE TABLE public.category (
    id integer NOT NULL,
    name text NOT NULL,
    image text,
    parent_category_id integer,
    removable boolean DEFAULT true NOT NULL,
    root boolean DEFAULT false NOT NULL
)
WITH (oids = false);
--
-- Structure for table product (OID = 24711) : 
--
CREATE TABLE public.product (
    id integer NOT NULL,
    product_category_id integer NOT NULL,
    name text NOT NULL,
    description text,
    price integer DEFAULT 1 NOT NULL,
    discount_price integer,
    discount integer,
    image text,
    sale boolean DEFAULT false,
    producer_id integer NOT NULL,
    range_id integer
)
WITH (oids = false);
--
-- Structure for table comment (OID = 24717) : 
--
CREATE TABLE public.comment (
    id integer NOT NULL,
    user_id integer NOT NULL,
    product_id integer NOT NULL,
    content text
)
WITH (oids = false);
--
-- Structure for table settings (OID = 24723) : 
--
CREATE TABLE public.settings (
    id integer NOT NULL,
    product_id integer NOT NULL,
    property_name text,
    property_value text
)
WITH (oids = false);
--
-- Structure for table user_role (OID = 24726) : 
--
CREATE TABLE public.user_role (
    user_id integer NOT NULL,
    role_id integer NOT NULL
)
WITH (oids = false);
--
-- Structure for table category_settings (OID = 33005) : 
--
CREATE TABLE public.category_settings (
    id integer NOT NULL,
    field_name text NOT NULL,
    field_type text NOT NULL,
    category_id integer NOT NULL,
    unit text
)
WITH (oids = false);
--
-- Definition for sequence category_settings_id_seq (OID = 33013) : 
--
CREATE SEQUENCE public.category_settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table producer (OID = 33064) : 
--
CREATE TABLE public.producer (
    id integer NOT NULL,
    name text NOT NULL,
    image text,
    description text
)
WITH (oids = false);
--
-- Definition for sequence producer_id_seq (OID = 33077) : 
--
CREATE SEQUENCE public.producer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table category_producer (OID = 33079) : 
--
CREATE TABLE public.category_producer (
    category_id integer NOT NULL,
    producer_id integer NOT NULL
)
WITH (oids = false);
--
-- Structure for table producer_categories (OID = 33092) : 
--
CREATE TABLE public.producer_categories (
    id integer NOT NULL,
    producer_id integer
)
WITH (oids = false);
--
-- Structure for table range (OID = 33101) : 
--
CREATE TABLE public.range (
    id integer NOT NULL,
    name text NOT NULL,
    producer_id integer,
    image text
)
WITH (oids = false);
--
-- Definition for sequence range_id_seq (OID = 33114) : 
--
CREATE SEQUENCE public.range_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Data for table public.client (OID = 24696) (LIMIT 0,4)
--
INSERT INTO client (id, name, type)
VALUES (4250, 'kghjk', 'hgjkghjk');

INSERT INTO client (id, name, type)
VALUES (1, 'init client', NULL);

INSERT INTO client (id, name, type)
VALUES (4600, 'aaaa', 'fdsafd');

INSERT INTO client (id, name, type)
VALUES (4650, 'jrtyj', 'jytrj');

--
-- Data for table public.role (OID = 24699) (LIMIT 0,2)
--
INSERT INTO role (id, role)
VALUES (1, 'ROLE_ADMIN');

INSERT INTO role (id, role)
VALUES (2, 'ROLE_USER');

--
-- Data for table public.users (OID = 24702) (LIMIT 0,1)
--
INSERT INTO users (id, login, password, email, first_name, last_name, enabled)
VALUES (1, 'init user', '123456', 'init_user@discount.com', 'Init', 'User', true);

--
-- Data for table public.category (OID = 24705) (LIMIT 0,21)
--
INSERT INTO category (id, name, image, parent_category_id, removable, root)
VALUES (2, 'Опалення', 'images/опалення.jpg', NULL, false, true);

INSERT INTO category (id, name, image, parent_category_id, removable, root)
VALUES (2900, 'Дизайн радіатори', 'images/IMG_1133.JPG', 2, true, false);

INSERT INTO category (id, name, image, parent_category_id, removable, root)
VALUES (2950, 'Змішувачі для ванни', 'images/змішувач для ванни.jpg', 1, true, false);

INSERT INTO category (id, name, image, parent_category_id, removable, root)
VALUES (2951, 'Змішувачі для кухні', 'images/змішувач для кухні.jpg', 1, true, false);

INSERT INTO category (id, name, image, parent_category_id, removable, root)
VALUES (3000, 'Котли', 'images/котли.jpg', 2, true, false);

INSERT INTO category (id, name, image, parent_category_id, removable, root)
VALUES (3050, 'Газові колонки', 'images/газові колонки.jpg', 2, true, false);

INSERT INTO category (id, name, image, parent_category_id, removable, root)
VALUES (3100, 'Змішувач для біде', 'images/біде.jpg', 1, true, false);

INSERT INTO category (id, name, image, parent_category_id, removable, root)
VALUES (5000, 'Test category', 'images/default.jpg', NULL, true, false);

INSERT INTO category (id, name, image, parent_category_id, removable, root)
VALUES (3300, 'Змішувачі для душової кабіни', 'images/змішувач для душу.jpg', 1, true, false);

INSERT INTO category (id, name, image, parent_category_id, removable, root)
VALUES (3301, 'Змішувачі для умивальника', 'images/змішувач для умивальника.jpeg', 1, true, false);

INSERT INTO category (id, name, image, parent_category_id, removable, root)
VALUES (1, 'Змішувачі', 'images/змішувачі.jpg', NULL, false, true);

INSERT INTO category (id, name, image, parent_category_id, removable, root)
VALUES (3350, 'Сантехніка для ванни', 'images/сант. для ванни.jpg', NULL, true, true);

INSERT INTO category (id, name, image, parent_category_id, removable, root)
VALUES (3400, 'Сантехніка для душу', 'images/душ кабіна.gif', NULL, true, true);

INSERT INTO category (id, name, image, parent_category_id, removable, root)
VALUES (3401, 'Меблі для ванної', 'images/меблі для ванної.jpg', NULL, true, true);

INSERT INTO category (id, name, image, parent_category_id, removable, root)
VALUES (3402, 'Мийки і раковини', 'images/мийки і раковини.jpg', NULL, true, true);

INSERT INTO category (id, name, image, parent_category_id, removable, root)
VALUES (3403, 'Сантехніка для туалету', 'images/сант. для туалету.jpg', NULL, true, true);

INSERT INTO category (id, name, image, parent_category_id, removable, root)
VALUES (3404, 'Кухонні мийки', 'images/куханна мийка.jpg', 3402, true, false);

INSERT INTO category (id, name, image, parent_category_id, removable, root)
VALUES (3405, 'Раковини', 'images/раковина.jpg', 3402, true, false);

INSERT INTO category (id, name, image, parent_category_id, removable, root)
VALUES (3406, 'Аксесуари для кухонних мийок', 'images/default.jpg', 3402, true, false);

INSERT INTO category (id, name, image, parent_category_id, removable, root)
VALUES (3407, 'П''єдестал для раковини', 'images/П''єдестал для раковини.jpg', 3402, true, false);

INSERT INTO category (id, name, image, parent_category_id, removable, root)
VALUES (3408, 'Акрилові ванни', 'images/акрилова ванна.jpg', 3350, true, false);

--
-- Data for table public.product (OID = 24711) (LIMIT 0,72)
--
INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3514, 3100, 'Hansa 45073203', 'Однорычажный смеситель для биде с донным клапаном на одно отверстие, DN 15 для биде расход: 6 л/мин, измеряется при давлении потока 3 бар • сливной гарнитур • Подключение через гибкие шланги G 3/8 • DVGW в работе выступ: 105 мм излив: литой', 0, NULL, 0, 'images/zb2.jpg', false, 1150, 186);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3101, 2900, 'BOGO', 'Se', 2712, NULL, 0, 'images/JrKGAKKjcdQ.jpg', false, 1000, NULL);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3352, 3000, 'Kiturami TWIN Alpha', 'Функція енергозбереження
Датчик виявлення витоку газу
Запобігання розморожування системи опалення в зимовий період
Вбудований сепаратор усуває повітря із системи опалення
Працює при низькому тиску газу (від 0,3 мбар)
Працює при слабкому протоці води ГВП (від 1,6 л / хв)
Функція самодіагностики несправностей
Зручне управління котлом
Теплообмінник складається з міді 99%
Розширювальний бак - 7л', 0, NULL, 10, 'images/k1.jpg', true, 1100, NULL);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3503, 2951, 'HAIBA GUDINI 018', '', 234, NULL, 0, 'images/zk5.jpg', false, 950, 150);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3504, 2950, 'HAIBA GUDINI 006', '', 211, NULL, 0, 'images/zv3.jpg', false, 950, 150);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3505, 2950, 'Haiba', '', 0, NULL, 0, 'images/zv4.jpg', false, 950, NULL);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3100, 2900, 'Сезам', '', 123, NULL, 0, 'images/IMG_1133.JPG', false, 1, NULL);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3150, 2900, 'Левантієць', '', 5977, NULL, 0, 'images/nfINId-JlCk.jpg', false, 1, NULL);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3200, 2900, 'ЛоконSe', '', 4269, NULL, 0, 'images/fJQVwg1Ndj0.jpg', false, 1, NULL);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3520, 2951, 'Zegor SAR-A181', '', 323, NULL, 0, 'images/zk12.jpg', false, 1, 153);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3250, 2900, 'Лабіринт', '', 2391, NULL, 0, 'images/gdiaHB106IY.jpg', false, 1, NULL);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3528, 3301, 'Zegor-BEY A730', '', 224, NULL, 0, 'images/zu8.jpg', false, 1, 154);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3513, 3301, 'Hansa 45042203', 'Однорычажный смеситель для умывальника, DN 15 расход: 6 л/мин, измеряется при давлении потока 3 бар • сливной гарнитур • Подключение через гибкие шланги G 3/8 • DVGW в работе выступ: 99 мм излив: неподвижный, литой', 0, NULL, 0, 'images/zu7.jpg', false, 1150, NULL);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3508, 2951, 'Hansa Cuisine 54912233', '', 675, NULL, 0, 'images/zk7.jpg', false, 1150, 187);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3515, 2950, 'Hansa 45112103', 'Однорычажный смеситель для ванны, DN 15 (G1/2) для настенного монтажа расход: 20/19 л/мин (излив/душ), измеряется при давлении потока 3 бар • переключение - автоматический возврат в исходное положение душ/ванна • S-образные подключения DN 15 (', 0, NULL, 0, 'images/zv5.jpg', false, 1150, NULL);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3516, 3300, 'Hansa 45120103', 'Однорычажный смеситель для душа, DN 15 (G1/2) для настенного монтажа расход: 17 л/мин, измеряется при давлении потока 3 бар • S-образные подключения DN 15 (G1/2) • DVGW в работе', 0, NULL, 0, 'images/zdk2.jpg', false, 1150, NULL);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3507, 2951, 'Hansa Cuisine 54902203', '', 600, NULL, 0, 'images/zk6.jpg', false, 1150, 187);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3451, 3300, 'HAIBA HANSBERG 003', '', 150, NULL, 0, 'images/zdk1.jpg', false, 950, 1);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3518, 2951, ' Zegor DYU-A180', 'Змішувач для кухні боковий на жовтій гайці.
ф40 безшумний керамічний катридж з збільшеним ресурсом, 
латунний корпус, покращений аератор змягчуючий воду,
надійне кріплення на усиленій гайці.', 200, NULL, 0, 'images/zk10.jpg', false, 1, 155);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3201, 2900, 'Трансформер', '', 9819, NULL, 10, 'images/GBuiNrYDtsA.jpg', true, 1000, NULL);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3511, 3301, 'Hansa Designo 51032173', '', 556, NULL, 0, 'images/zu6.jpg', false, 1150, 186);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3452, 3100, 'HAIBA HANSBERG 002', '', 250, NULL, 0, 'images/zb1.jpg', false, 950, 1);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3501, 2950, 'HAIBA HANSBERG 006', '', 300, NULL, 0, 'images/zv2.jpg', false, 950, 1);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3450, 2950, 'HAIBA HANSBERG 009', '', 200, NULL, 0, 'images/zv1.jpg', false, 950, 1);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3500, 3301, 'HAIBA HANSBERG 001', '', 321, NULL, 0, 'images/zu2.jpg', false, 1000, NULL);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3400, 2951, 'Haiba Hansberg 004-25см', '', 155, NULL, 0, 'images/zk3.jpg', false, 950, 1);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3509, 3301, 'Hansa Cuisine 54932213', '', 1112, NULL, 0, 'images/zu4.jpg', false, 1150, 187);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3510, 3301, 'Hansa Designo 51032101', '', 865, NULL, 0, 'images/zu5.jpg', false, 1150, 186);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3512, 2951, 'Hansa Designo 51052102', '', 987, NULL, 0, 'images/zk8.jpg', false, 1150, 186);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3519, 2951, ' Zegor YUB-A182', 'Змішувач для кухні боковий на жовтій гайці.
ф40 безшумний керамічний катридж з збільшеним ресурсом,
надійне кріплення на усиленій гайці.', 436, NULL, 0, 'images/zk11.jpg', false, 1, 152);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3517, 2951, 'TBS-A179', 'Смеситель для кухни боковой.
Ф40 малошумный керамический картридж с повышенным ресурсом, латунный корпус, улучшенный аэратор смягчающий воду.', 166, NULL, 0, 'images/zk9.jpg', false, 1, 151);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3356, 2951, 'Haiba Hansberg017', '', 132, NULL, 0, 'images/zk1.jpg', false, 950, 1);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3357, 2951, 'Haiba Hansberg012', '', 145, NULL, 0, 'images/zk2.jpg', false, 950, 1);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3502, 2951, 'Haiba Hansberg 011', '', 155, NULL, 0, 'images/zk4.jpg', false, 950, 1);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3506, 3301, 'Hansa Pico 46042203', '', 345, NULL, 0, 'images/zu3.jpg', false, 1150, 188);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3353, 3000, 'Kiturami TWIN ALPHA', 'Технические особенности Kiturami TWIN ALPHA:
Новый усовершенствованный медно-алюминиевый теплообменник.
Облегчённый расширительный бак, усовершенствованное крепление к корпусу котла Kiturami Twin Apha.
Установлен новый вентилятор с низким уровнем шума для поддержания стабильного давления в котле. Привод осуществляется от однофазного электродвигателя постоянного тока. Крепление на вибропоглащающей площадке.
Технология блокирования проникновения газообразных отходов.
Установлена горелка пропорционально контролируемого типа, потребление газа пропорционально контролируется, в зависимости от температуры горячей воды и отопления. Так образом расход газа минимизируется.
Энергосбережение достигается благодаря эффективной работе котла, оснащенного комнатным термостатом-регулятором с цифровой индикацией режимов «Сон», «Отсутствие», «Душ».
Блок управления, оснащенный системой выявления утечки газа, автоматически оповещает об утечке газа. В этом случае котел автоматически прекращает работу, что позволяет предотвратить аварийную ситуацию и избежать отравления угарным газом.
Когда температура воздуха резко понижается зимой, котел автоматически функционирует и поддерживает заданную температуру. Функционирование отопительного циркуляционного насоса предотвращает замерзание котла. При длительном отсутствии не выключайте котел. Настройте температуру котла на соответствующую температуру, чтобы предотвратить замораживание и образование трещин.
В случае неисправности мигает контрольная лампочка, и на дисплее комнатного термостата-регулятора появляется цифра, обозначающая вид неисправности. Это позволяет легко установить проичину внештатной ситуации.
В случае перегрева теплообменника, отключения электропитания или быстрого падения давления газа, система безопасности автоматически прекращает подачу газа. (При засорении выхлопных труб или когда затрудняется отвод газа ввиду направления ветра, система отслеживает эти условия и автоматически блокирует подачу газа).
Если уровень воды в котле ниже нормы срабатывает функция автоматического наполненения воды. (Если котел закрытого типа, тогда необходимо пополнять воду самостоятельно.
Возможность регулировки температуры горячей воды в диапазоне от 35°С до 60°С.', 0, NULL, 0, 'images/k2.jpg', false, 1100, NULL);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3354, 3000, 'Kiturami World Plus', 'Потребительские характеристики Kiturami World Plus:
Система накопительного теплообменника. Конструкция накопительного теплообменника позволяет предотвращать коррозийные процессы, повышает прочность теплообменника и срок эксплуатации котла;
Горелка с внутренним пламенем обеспечивает полное сгорание газа, снижая при этом расход;
Горячая вода: много и быстро. Теплосберегающая система, действующая по принципу термоса, позволяет получать достаточное количество горячей воды из накопительного бака;
Система безопасности: датчик утечки газа и сейсмодатчик. Установленные датчики утечки газа и сейсмодатчик обеспечивают безопасную работу котла в любых условиях.
Автоматическая система отключения газа. Тревожная сигнализация при самодиагностики. Защита от встречного ветра. Отключение при низком давлении. Устройство отключение при пожаре. Защита циркуляции. Защита от замерзания. Система накопительного теплообменника. Конструкция накопительного теплообменника позволяет предотвращать коррозийные процессы, повышает прочность теплообменника и срок эксплуатации котла. В котле Китурами впервые использована горелка с внутренним пламенем. Горелка с внутренним пламенем обеспечивает полное сгорание газа, снижая при этом расход газа. Теплосберегающая система, действующая по принципу термоса, позволяет получать достаточное количество горячей воды из накопительного бака. Установленные датчики утечки газа. Ипользование незамерзающих жидкостей. Экономия электроэнергии посредством выносного комнатного терморегулятора со встроенным цифровым управлением позволяющим использовать и программировать рабочие режимы.', 0, NULL, 0, 'images/k3.jpg', false, 1000, NULL);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3529, 3301, ' Zegor-JAF-A725', 'Змішувач для умивальника (тюльпан) 
литий корпус', 225, NULL, 0, 'images/zu9.jpg', false, 1, 160);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3527, 2951, 'Zegor TOE A-827', 'Змішувач для кухні на метал. гайці.', 122, NULL, 0, 'images/zk19.jpg', false, 1, 159);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3526, 2951, ' POP A-031 25см', 'Змішувач для кухні 
ф40 катридж.', 140, NULL, 0, 'images/zk18.jpg', false, 1, 158);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3525, 2951, 'Zegor POP B-031 15см', 'Змішувач для кухні 
ф40 катридж.', 200, NULL, 0, 'images/zk17.jpg', false, 1, 158);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3524, 2951, 'Zegor PDF A-283 25см.', 'Змішувач для кухні на гайці.
ф40 катридж', 313, NULL, 0, 'images/zk16.jpg', false, 1, 157);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3523, 2951, 'Zegor PDF B-283 15 см.', 'Змішувач для кухні на гайці.
ф40 катридж', 170, NULL, 0, 'images/zk15.jpg', false, 1, 157);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3522, 2951, 'Zegor PED A-279 25', 'Змішувач для кухнi на жовтій гайці
ф40 катридж, латунний корпус.', 155, NULL, 0, 'images/zk14.jpg', false, 1, 156);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3521, 2951, ' Zegor PED B-182', 'Змішувач для кухні на жовтій гайці
ф40 катридж, латунний корпус.', 135, NULL, 0, 'images/zk13.jpg', false, 1, 156);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3530, 3301, ' Zegor-JAP-A827', 'Змішувач для умивальника (тюльпан) 
литий корпус.', 200, NULL, 0, 'images/zu10.jpg', false, 1, 161);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3531, 3301, 'Zegor-TLK-A119', 'Кран для раковини( моно)
литий корпус', 150, NULL, 0, 'images/zu11.jpg', false, 1, 162);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3548, 2950, ' Zegor-ECT', '', 0, NULL, 0, 'images/zv18.jpg', false, 1, NULL);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3549, 2950, ' Zegor-NGB', 'Змішувач для ванни 
Новинка!!!', 0, NULL, 0, 'images/zv19.jpg', false, 1, NULL);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3550, 2950, 'Zegor-NHK', 'Змішувач для ванни .
ф40 катридж, покращений поворотний переключатель
на корпусі девіатор.', 0, NULL, 0, 'images/zv20.jpg', false, 1, NULL);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3551, 2950, 'Zegor-NKE', 'Змішувач для ванни .
ф40 катридж, покращений поворотний переключатель
на корпусі.', 0, NULL, 0, 'images/zv21.jpg', false, 1, NULL);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3552, 2950, 'Zegor-NLY', 'Змішувач для ванни .
ф40 катридж, покращений поворотний переключатель
на корпусі.', 0, NULL, 0, 'images/zv22.jpg', false, 1, NULL);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3553, 2950, 'Zegor-NPO', 'Змішувач для ванни .
ф40 катридж, покращений поворотний переключатель
на корпусі.', 0, NULL, 0, 'images/zv23.jpg', false, 1, NULL);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3554, 2950, ' Zegor-NVL', 'Змішувач для ванни .
ф40 катридж, покращений поворотний переключатель
на корпусі, латунний корпус, 
масажна лійка, душовий шланг двослойний розтяжний.', 0, NULL, 0, 'images/zv24.jpg', false, 1, NULL);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3355, 3000, 'Kiturami EcoCondensing', 'Наилучший показатель по выбросу Nox и СО. Электронная система контроля потребления газа – пропорционально нагреву температуры теплоносителя и с преимуществом мгновенного нагрева ГВС. Использование в теплообменнике таких материалов как: медной трубки теплоносителя, алюминиевых секций радиаторов и нержавеющей стали теплообменника, позволяют увеличить ресурс работы теплообменника до 20 лет. Емкость с нейтрализатором кислоты – разряжает сконденсированную воду от PH-3 до PH-6. Вода выходит из котла неагрессивной и пригодной к сливу в канализацию. Котел оснащен дистанционным пультом управления с комнатным термостатом. Функция предотвращения промерзания котла в зимнее время года. Наличие датчика утечки газа.', 0, NULL, 0, 'images/k4.jpg', false, 1100, NULL);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3535, 3301, 'Zegor-BEA-A112', 'Змішувач для умивальника (тюльпан).
ф40 катридж.', 123, NULL, 0, 'images/zu15.jpg', false, 1, 166);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3600, 2950, 'test product', '', 0, NULL, 0, 'images/default.jpg', false, 950, 1);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3532, 3301, 'Zegor-TZF-A605', '', 160, NULL, 0, 'images/zu12.jpg', false, 1, 163);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3533, 3301, 'Zegor-BIT-A182', 'Змішувач для умивальника (тюльпан).
ф40 катридж.', 165, NULL, 0, 'images/zu13.jpg', false, 1, 164);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3534, 3301, 'Zegor-BBS-A279', 'Змішувач для умивальника (тюльпан).
ф40 катридж. Латунний корпус.', 180, NULL, 0, 'images/zu14.jpg', false, 1, 165);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3536, 2950, ' Zegor-DFR-A605', 'Змішувач для ванни з шаровим переключателем.
кранбукса, 24(1/2 керам.), литий корпус.', 350, NULL, 0, 'images/zv6.jpg', false, 1, 167);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3537, 2950, 'Zegor-DMT', 'Змішувач для ванни з дво позиційним катріджним переключателем.
кранбукса, 24(1/2 керам.), литий корпус.
масажна лійка.', 325, NULL, 0, 'images/zv7.jpg', false, 1, 168);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3541, 2950, 'Zegor-D4Q', 'Змішувач для ванни з шаровим переключателем.
кранбукса, 24(1/2 керам.), литий корпус.
масажна лійка.', 325, NULL, 0, 'images/zv11.jpg', false, 1, 172);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3538, 2950, 'Zegor-DMX', 'Змішувач для ванни 
кранбукса, 24(1/2 керам.), литий корпус.', 366, NULL, 0, 'images/zv8.jpg', false, 1, 169);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3539, 2950, 'Zegor-LML', 'Змішувач для ванни
кранбукса, 24(3/8разин.).', 299, NULL, 0, 'images/zv9.jpg', false, 1, 170);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3540, 2950, 'Zegor-D3Q', 'Змішувач для ванни з шаровим переключателем.
кранбукса, 24(1/2 керам.), литий корпус.
масажна лійка.', 500, NULL, 0, 'images/zv10.jpg', false, 1, 171);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3542, 2950, ' Zegor-D5Q', 'Змішувач для ванни з трипозиційним катріджним переключателем.
литий корпус. плоский прямий гусак 35см., 
масажна лійка, Душовий шланг двослойний розтяжний.', 550, NULL, 0, 'images/zv12.jpg', false, 1, 173);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3543, 2950, 'Zegor-DST', 'Змішувач для ванни з дво позиційним катріджним переключателем.
кранбукса, 24(1/2 керам.), латунний корпус,
плоский прямий гусак, масажна лійка.', 415, NULL, 0, 'images/zv13.jpg', false, 1, 174);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3544, 2950, ' Zegor-SEA', 'Змішувач для ванни з коротким зливом.
ф40 катридж.', 220, NULL, 0, 'images/zv14.jpg', false, 1, 175);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3545, 2950, 'Zegor-SIT', 'Змішувач для ванни з коротким зливом.
ф40 катридж.', 200, NULL, 0, 'images/zv15.jpg', false, 1, 176);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3546, 2950, 'Zegor-SWZ', 'Змішувач для ванни з коротким зливом.
ф40 катридж. латю корпус.', 210, NULL, 0, 'images/zv16.jpg', false, 1, 177);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale, producer_id, range_id)
VALUES (3547, 2950, 'Zegor-LOP', 'Змішувач для ванни 
ф40 катридж', 259, NULL, 0, 'images/zv17.jpg', false, 1, 178);

--
-- Data for table public.settings (OID = 24723) (LIMIT 0,257)
--
INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3150, 3100, 'Профіль', '30x10');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3151, 3100, 'Розмір', '2000х1250х1370');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3152, 3100, 'Профіль', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3153, 3100, 'Розмір', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3154, 3100, 'Профіль', '30x10x15 25x25x2.0');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3155, 3100, 'Розмір', '2000х1250х1370');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3156, 3100, 'Профіль', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3157, 3100, 'Розмір', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3200, 3200, 'Профіль', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3201, 3200, 'Розмір', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3202, 3200, 'Профіль', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3203, 3200, 'Розмір', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3204, 3101, 'Профіль', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3205, 3101, 'Розмір', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3206, 3101, 'Профіль', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3207, 3101, 'Розмір', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3208, 3201, 'Профіль', 'Se');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3209, 3201, 'Розмір', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3210, 3201, 'Профіль', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3211, 3201, 'Розмір', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3250, 3201, 'Профіль', 'Seff dfsggdsfg ');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3251, 3201, 'Розмір', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3252, 3201, 'Профіль', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3253, 3201, 'Розмір', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (2800, 3250, 'Профіль', '40х40х1,5');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (2801, 3250, 'Розмір', '40х40х1,5');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (2802, 3100, 'Профіль', '30x10x15');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (2803, 3100, 'Розмір', '2000х1250х1370');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3450, 3201, 'Профіль', 'Se');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3451, 3201, 'Розмір', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3452, 3201, 'Профіль', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3453, 3201, 'Розмір', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3552, 3352, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3553, 3353, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3554, 3353, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3555, 3353, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3556, 3354, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3557, 3355, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3558, 3356, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3559, 3357, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3600, 3400, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3650, 3450, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3651, 3450, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3652, 3451, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3653, 3452, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3700, 3354, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3750, 3354, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3800, 3354, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3801, 3354, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3802, 3354, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3850, 3201, 'Профіль', 'Se');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3851, 3201, 'Розмір', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3852, 3201, 'Профіль', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3853, 3201, 'Розмір', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3854, 3101, 'Профіль', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3855, 3101, 'Розмір', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3856, 3101, 'Профіль', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3857, 3101, 'Розмір', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3900, 3451, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3901, 3356, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3902, 3357, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3950, 3500, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3951, 3501, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3952, 3501, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3953, 3502, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3954, 3503, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3955, 3504, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3956, 3504, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3957, 3505, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3958, 3505, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3959, 3506, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3960, 3507, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3961, 3508, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3962, 3507, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3963, 3509, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3964, 3509, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3965, 3510, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3966, 3511, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3967, 3512, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3968, 3513, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3969, 3512, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3970, 3514, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3971, 3515, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3972, 3515, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3973, 3516, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3974, 3517, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3975, 3518, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3976, 3519, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3977, 3520, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3978, 3521, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3979, 3522, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3980, 3523, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3981, 3524, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3982, 3525, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3983, 3526, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3984, 3527, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3985, 3528, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3986, 3529, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3987, 3530, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3988, 3531, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3989, 3532, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3990, 3533, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3991, 3534, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3992, 3535, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3993, 3536, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3994, 3536, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3995, 3537, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3996, 3537, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3997, 3538, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3998, 3538, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (3999, 3539, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4000, 3539, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4001, 3540, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4002, 3540, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4003, 3541, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4004, 3541, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4005, 3542, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4006, 3542, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4007, 3543, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4008, 3543, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4009, 3544, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4010, 3544, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4011, 3545, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4012, 3545, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4013, 3546, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4014, 3546, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4015, 3547, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4016, 3547, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4017, 3548, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4018, 3548, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4019, 3549, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4020, 3549, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4021, 3550, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4022, 3550, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4023, 3551, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4024, 3551, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4025, 3552, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4026, 3552, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4027, 3553, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4028, 3553, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4029, 3554, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4030, 3554, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4031, 3355, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4032, 3355, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4033, 3400, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4034, 3450, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4035, 3450, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4036, 3452, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4037, 3201, 'Профіль', 'Se');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4038, 3201, 'Розмір', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4039, 3201, 'Профіль', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4040, 3201, 'Розмір', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4041, 3451, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4042, 3356, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4043, 3357, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4044, 3500, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4045, 3352, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4046, 3501, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4047, 3501, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4048, 3501, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4049, 3501, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4050, 3502, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4051, 3506, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4052, 3518, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4053, 3511, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4100, 3500, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4101, 3501, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4102, 3501, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4103, 3400, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4104, 3450, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4105, 3450, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4150, 3600, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4151, 3600, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4152, 3600, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4153, 3600, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4154, 3600, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4155, 3600, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4156, 3452, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4157, 3511, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4158, 3503, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4159, 3503, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4160, 3504, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4161, 3504, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4162, 3508, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4163, 3517, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4164, 3514, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4165, 3507, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4166, 3509, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4167, 3509, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4168, 3510, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4169, 3512, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4170, 3519, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4171, 3520, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4172, 3528, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4173, 3508, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4174, 3517, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4175, 3507, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4176, 3451, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4177, 3356, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4178, 3357, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4179, 3502, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4180, 3506, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4181, 3518, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4182, 3529, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4183, 3527, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4184, 3526, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4185, 3525, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4186, 3524, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4187, 3523, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4188, 3522, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4189, 3521, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4190, 3511, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4191, 3452, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4192, 3450, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4193, 3450, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4194, 3450, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4195, 3450, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4196, 3450, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4197, 3450, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4198, 3400, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4199, 3400, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4200, 3501, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4201, 3501, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4202, 3501, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4203, 3501, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4204, 3530, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4205, 3531, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4206, 3532, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4207, 3533, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4208, 3534, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4209, 3535, '', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4210, 3536, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4211, 3536, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4212, 3537, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4213, 3537, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4214, 3538, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4215, 3538, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4216, 3538, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4217, 3538, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4218, 3539, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4219, 3539, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4220, 3540, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4221, 3540, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4222, 3541, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4223, 3541, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4224, 3542, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4225, 3542, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4226, 3543, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4227, 3543, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4228, 3544, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4229, 3544, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4230, 3545, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4231, 3545, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4232, 3546, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4233, 3546, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4234, 3547, 'Тип', '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (4235, 3547, 'Тип', '');

--
-- Data for table public.user_role (OID = 24726) (LIMIT 0,2)
--
INSERT INTO user_role (user_id, role_id)
VALUES (1, 1);

INSERT INTO user_role (user_id, role_id)
VALUES (1, 2);

--
-- Data for table public.category_settings (OID = 33005) (LIMIT 0,26)
--
INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (1250, 'Профіль', 'TEXT', 2900, '');

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (1251, 'Розмір', 'TEXT', 2900, NULL);

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (1300, 'Профіль', 'TEXT', 2900, NULL);

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (1301, 'Розмір', 'TEXT', 2900, NULL);

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (1350, 'Тип', 'TEXT', 2950, '');

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (1351, 'Тип', 'TEXT', 2951, '');

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (1352, 'Тип', 'TEXT', 2950, NULL);

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (1400, '', 'TEXT', 3000, '');

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (1450, '', 'TEXT', 3050, '');

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (1500, '', 'TEXT', 3100, '');

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (1600, '', 'TEXT', 3300, '');

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (1601, '', 'TEXT', 3301, '');

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (1650, '', 'TEXT', 3350, '');

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (1651, '', 'TEXT', 3350, NULL);

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (1700, '', 'TEXT', 3350, NULL);

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (1701, '', 'TEXT', 3350, NULL);

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (1702, '', 'TEXT', 3400, '');

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (1703, '', 'TEXT', 3400, NULL);

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (1704, '', 'TEXT', 3401, '');

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (1705, '', 'TEXT', 3402, '');

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (1706, '', 'TEXT', 3403, '');

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (1707, '', 'TEXT', 3404, '');

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (1708, '', 'TEXT', 3405, '');

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (1709, '', 'TEXT', 3406, '');

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (1710, '', 'TEXT', 3407, '');

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (1711, '', 'TEXT', 3408, '');

--
-- Data for table public.producer (OID = 33064) (LIMIT 0,5)
--
INSERT INTO producer (id, name, image, description)
VALUES (1000, 'Test producer', 'images/default.jpg', NULL);

INSERT INTO producer (id, name, image, description)
VALUES (1100, 'Kiturami', 'images/kiturami-kombi.jpg', NULL);

INSERT INTO producer (id, name, image, description)
VALUES (1, 'Zegor', 'images/zegor.jpg', 'Марка «Zegor» от фирмы «Touzhen» пришла на украинский рынок в 2007 году и быстро завоевала своих поклонников.

Фабрика сантехнического оборудования позволяет использовать новейшие технологии и устанавливать высокие стандарты качества.

Работая в сантехнической сфере, мы всегда ставим качество продукции на первое место. Поэтому внедряем в производство новейшие технологии литья и нанесения покрытий, гарантирующих беспрецедентно высокий уровень нашего сантехнического товара.');

INSERT INTO producer (id, name, image, description)
VALUES (1150, 'Hansa', 'images/Hansa-Logo.jpg', '');

INSERT INTO producer (id, name, image, description)
VALUES (950, 'Haiba', 'images/haiba.jpg', 'Вот уже более 20 лет китайская корпорация Haiba разрабатывает различную сантехническую продукцию. За этот период компания завоевала престижные позиции в своей отрасли. Она является просто гигантом по производству сантехники. Территория компании занимает целых 90 000 квадратных метров. В год она производит более 6 миллионов экземпляров смесителей. Каждый из них соответствует мировому уровню качества. Это достигается благодаря стандартизованной системе управления производством. А также за счет использования передового высокотехнологичного оборудования на всех заводах компании. В корпорации присутствует современная база для инновационных разработок.

Применяемые в бытовом использовании изделия прекрасно дополнят общий интерьер кухни. Также вы можете обустроить свою столовую и ванную комнату. Смесители Haiba отличают аккуратные ручки, усиленные гайки. Дизайнерское исполнение также присуще этим изделиям.

Приятная новость для покупателей. Смеситель Haiba включает полную комплектацию для быстрой и простой установки. Наружные части арматуры изделий сначала покрываются слоем никеля. Это дает защиту от коррозии. Затем подвергаются хромированию. Это исключает развитие и размножение микроорганизмов на поверхности металла. Огромный выбор кухонных смесителей отличается разнообразием оригинальных форм рычагов, носиков и т. д.

Те, кому нужно подобрать смеситель для ванной, тоже останутся довольны. Их выбор не менее внушителен и разнообразен. В каждой коллекции имеется своя оригинальная модель, которая подойдет к любому интерьеру. ');

--
-- Data for table public.category_producer (OID = 33079) (LIMIT 0,20)
--
INSERT INTO category_producer (category_id, producer_id)
VALUES (2950, 1);

INSERT INTO category_producer (category_id, producer_id)
VALUES (2951, 1);

INSERT INTO category_producer (category_id, producer_id)
VALUES (3100, 1);

INSERT INTO category_producer (category_id, producer_id)
VALUES (3300, 1);

INSERT INTO category_producer (category_id, producer_id)
VALUES (3301, 1);

INSERT INTO category_producer (category_id, producer_id)
VALUES (1, 1);

INSERT INTO category_producer (category_id, producer_id)
VALUES (2950, 1150);

INSERT INTO category_producer (category_id, producer_id)
VALUES (2951, 1150);

INSERT INTO category_producer (category_id, producer_id)
VALUES (3100, 1150);

INSERT INTO category_producer (category_id, producer_id)
VALUES (3300, 1150);

INSERT INTO category_producer (category_id, producer_id)
VALUES (3301, 1150);

INSERT INTO category_producer (category_id, producer_id)
VALUES (1, 1150);

INSERT INTO category_producer (category_id, producer_id)
VALUES (2, 1100);

INSERT INTO category_producer (category_id, producer_id)
VALUES (3000, 1100);

INSERT INTO category_producer (category_id, producer_id)
VALUES (2950, 950);

INSERT INTO category_producer (category_id, producer_id)
VALUES (2951, 950);

INSERT INTO category_producer (category_id, producer_id)
VALUES (3100, 950);

INSERT INTO category_producer (category_id, producer_id)
VALUES (3300, 950);

INSERT INTO category_producer (category_id, producer_id)
VALUES (3301, 950);

INSERT INTO category_producer (category_id, producer_id)
VALUES (1, 950);

--
-- Data for table public.range (OID = 33101) (LIMIT 0,40)
--
INSERT INTO range (id, name, producer_id, image)
VALUES (150, 'Gudini', 950, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (151, 'TBS', 1, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (152, 'YUB', 1, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (153, 'SAR', 1, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (154, 'BEY', 1, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (155, 'DYU', 1, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (156, 'PED', 1, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (157, 'PDF', 1, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (158, 'POP', 1, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (159, 'TOE', 1, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (160, 'JAF', 1, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (161, 'JAP', 1, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (162, 'TLK', 1, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (163, 'TZF', 1, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (164, 'BIT', 1, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (165, 'BBS', 1, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (166, 'BEA', 1, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (167, 'DFR', 1, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (168, 'DMT', 1, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (169, 'DMX', 1, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (170, 'LML', 1, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (171, 'D3Q', 1, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (172, 'D4Q', 1, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (173, 'D5Q', 1, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (174, 'DST', 1, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (175, 'SEA', 1, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (176, 'SIT', 1, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (177, 'SWZ', 1, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (178, 'LOP', 1, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (179, 'ECT', 1, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (180, 'NGB', 1, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (181, 'NHK', 1, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (182, 'NKE', 1, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (183, 'NLY', 1, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (184, 'NPO', 1, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (185, 'NVL', 1, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (186, 'Designo', 1150, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (187, 'Cuisine', 1150, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (188, 'Pico', 1150, NULL);

INSERT INTO range (id, name, producer_id, image)
VALUES (1, 'Hansberg', 950, 'images/hansberg.jpg');

--
-- Definition for index client_pkey (OID = 24729) : 
--
ALTER TABLE ONLY client
    ADD CONSTRAINT client_pkey
    PRIMARY KEY (id);
--
-- Definition for index role_pkey (OID = 24731) : 
--
ALTER TABLE ONLY role
    ADD CONSTRAINT role_pkey
    PRIMARY KEY (id);
--
-- Definition for index user_pkey (OID = 24733) : 
--
ALTER TABLE ONLY users
    ADD CONSTRAINT user_pkey
    PRIMARY KEY (id);
--
-- Definition for index productCategory_pkey (OID = 24735) : 
--
ALTER TABLE ONLY category
    ADD CONSTRAINT "productCategory_pkey"
    PRIMARY KEY (id);
--
-- Definition for index product_pkey (OID = 24737) : 
--
ALTER TABLE ONLY product
    ADD CONSTRAINT product_pkey
    PRIMARY KEY (id);
--
-- Definition for index comment_pkey (OID = 24749) : 
--
ALTER TABLE ONLY comment
    ADD CONSTRAINT comment_pkey
    PRIMARY KEY (id);
--
-- Definition for index productSettings_pkey (OID = 24761) : 
--
ALTER TABLE ONLY settings
    ADD CONSTRAINT "productSettings_pkey"
    PRIMARY KEY (id);
--
-- Definition for index comment_product_id_fkey (OID = 32910) : 
--
ALTER TABLE ONLY comment
    ADD CONSTRAINT comment_product_id_fkey
    FOREIGN KEY (product_id) REFERENCES product(id);
--
-- Definition for index comment_user_id_fkey (OID = 32915) : 
--
ALTER TABLE ONLY comment
    ADD CONSTRAINT comment_user_id_fkey
    FOREIGN KEY (user_id) REFERENCES users(id);
--
-- Definition for index user_role_pkey (OID = 32949) : 
--
ALTER TABLE ONLY user_role
    ADD CONSTRAINT user_role_pkey
    PRIMARY KEY (user_id, role_id);
--
-- Definition for index settings_product_id_fkey (OID = 32956) : 
--
ALTER TABLE ONLY settings
    ADD CONSTRAINT settings_product_id_fkey
    FOREIGN KEY (product_id) REFERENCES product(id);
--
-- Definition for index user_role_roleId_fkey (OID = 32995) : 
--
ALTER TABLE ONLY user_role
    ADD CONSTRAINT "user_role_roleId_fkey"
    FOREIGN KEY (role_id) REFERENCES role(id);
--
-- Definition for index user_role_userId_fkey (OID = 33000) : 
--
ALTER TABLE ONLY user_role
    ADD CONSTRAINT "user_role_userId_fkey"
    FOREIGN KEY (user_id) REFERENCES users(id);
--
-- Definition for index category_settings_pkey (OID = 33011) : 
--
ALTER TABLE ONLY category_settings
    ADD CONSTRAINT category_settings_pkey
    PRIMARY KEY (id);
--
-- Definition for index category_settings_fk (OID = 33025) : 
--
ALTER TABLE ONLY category_settings
    ADD CONSTRAINT category_settings_fk
    FOREIGN KEY (category_id) REFERENCES category(id);
--
-- Definition for index parent_category_fk (OID = 33056) : 
--
ALTER TABLE ONLY category
    ADD CONSTRAINT parent_category_fk
    FOREIGN KEY (parent_category_id) REFERENCES category(id);
--
-- Definition for index producer_pkey (OID = 33070) : 
--
ALTER TABLE ONLY producer
    ADD CONSTRAINT producer_pkey
    PRIMARY KEY (id);
--
-- Definition for index category_producer_category_id_fkey (OID = 33082) : 
--
ALTER TABLE ONLY category_producer
    ADD CONSTRAINT category_producer_category_id_fkey
    FOREIGN KEY (category_id) REFERENCES category(id);
--
-- Definition for index category_producer_producer_id_fkey (OID = 33087) : 
--
ALTER TABLE ONLY category_producer
    ADD CONSTRAINT category_producer_producer_id_fkey
    FOREIGN KEY (producer_id) REFERENCES producer(id);
--
-- Definition for index range_pkey (OID = 33107) : 
--
ALTER TABLE ONLY range
    ADD CONSTRAINT range_pkey
    PRIMARY KEY (id);
--
-- Definition for index product_producer_id_fkey (OID = 33116) : 
--
ALTER TABLE ONLY product
    ADD CONSTRAINT product_producer_id_fkey
    FOREIGN KEY (producer_id) REFERENCES producer(id);
--
-- Definition for index product_range_id_fkey (OID = 33121) : 
--
ALTER TABLE ONLY product
    ADD CONSTRAINT product_range_id_fkey
    FOREIGN KEY (range_id) REFERENCES range(id);
--
-- Definition for index range_producer_id_fkey (OID = 33126) : 
--
ALTER TABLE ONLY range
    ADD CONSTRAINT range_producer_id_fkey
    FOREIGN KEY (producer_id) REFERENCES producer(id);
--
-- Data for sequence public.client_id_seq (OID = 24682)
--
SELECT pg_catalog.setval('client_id_seq', 94, true);
--
-- Data for sequence public.comment_id_seq (OID = 24684)
--
SELECT pg_catalog.setval('comment_id_seq', 1, false);
--
-- Data for sequence public.product_id_seq (OID = 24686)
--
SELECT pg_catalog.setval('product_id_seq', 72, true);
--
-- Data for sequence public.product_category_id_seq (OID = 24688)
--
SELECT pg_catalog.setval('product_category_id_seq', 68, true);
--
-- Data for sequence public.product_settings_id_seq (OID = 24690)
--
SELECT pg_catalog.setval('product_settings_id_seq', 84, true);
--
-- Data for sequence public.user_id_seq (OID = 24692)
--
SELECT pg_catalog.setval('user_id_seq', 65, true);
--
-- Data for sequence public.user_role_id_seq (OID = 24694)
--
SELECT pg_catalog.setval('user_role_id_seq', 10, true);
--
-- Data for sequence public.category_settings_id_seq (OID = 33013)
--
SELECT pg_catalog.setval('category_settings_id_seq', 34, true);
--
-- Data for sequence public.producer_id_seq (OID = 33077)
--
SELECT pg_catalog.setval('producer_id_seq', 23, true);
--
-- Data for sequence public.range_id_seq (OID = 33114)
--
SELECT pg_catalog.setval('range_id_seq', 3, true);
--
-- Comments
--
COMMENT ON SCHEMA public IS 'standard public schema';
