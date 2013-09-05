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
    sale boolean DEFAULT false
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
-- Data for table public.category (OID = 24705) (LIMIT 0,7)
--
INSERT INTO category (id, name, image, parent_category_id, removable, root)
VALUES (1700, 'new cat', 'images/airline.PNG', NULL, true, false);

INSERT INTO category (id, name, image, parent_category_id, removable, root)
VALUES (1750, 'castom boilers', 'images/IMG_9737.jpg', 1658, true, false);

INSERT INTO category (id, name, image, parent_category_id, removable, root)
VALUES (1751, 'kghjk', 'images/default.jpg', 1750, true, false);

INSERT INTO category (id, name, image, parent_category_id, removable, root)
VALUES (1800, 'khjgk', 'images/default.jpg', 1659, true, false);

INSERT INTO category (id, name, image, parent_category_id, removable, root)
VALUES (1801, ';kl;k', 'images/default.jpg', 1700, true, false);

INSERT INTO category (id, name, image, parent_category_id, removable, root)
VALUES (1658, 'boilers', 'images/default.jpg', NULL, true, true);

INSERT INTO category (id, name, image, parent_category_id, removable, root)
VALUES (1659, 'Plubling', 'images/default.jpg', NULL, true, true);

--
-- Data for table public.product (OID = 24711) (LIMIT 0,14)
--
INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale)
VALUES (1850, 1658, 'new  product,123,sdfasdf,4321', 'new prod description', 100, NULL, NULL, 'images/default.jpg', false);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale)
VALUES (1900, 1658, 'sdfgsdfg', 'fgdfgdg', 1234, NULL, NULL, 'images/IMG_1066.JPG', false);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale)
VALUES (1953, 1700, 'ertyery', 'ertyre', 3456435, NULL, NULL, 'images/IMG_9735.jpg', false);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale)
VALUES (1954, 1750, 'ujytui', 'tityuit', 786547, NULL, NULL, 'images/IMG_1066.JPG', false);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale)
VALUES (1955, 1750, 'tyuitu', 'tiyu', 78658, NULL, NULL, 'images/IMG_1066.JPG', false);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale)
VALUES (1956, 1750, 'ityui', 'tyui', 8678, NULL, NULL, 'images/IMG_1066.JPG', false);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale)
VALUES (1957, 1750, 'tyuity', 'tyui', 657, NULL, NULL, 'images/IMG_1066.JPG', false);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale)
VALUES (1958, 1750, 'ityui', 'iytui', 8678, NULL, NULL, 'images/IMG_1066.JPG', false);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale)
VALUES (1959, 1750, 'khjk', 'kghjk', 7564, NULL, NULL, 'images/default.jpg', false);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale)
VALUES (1950, 1700, 'hgfdh', 'dfghdfgh', 52345, NULL, NULL, 'images/IMG_9738.jpg', true);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale)
VALUES (1951, 1700, 'ryert', 'ertyery', 5345, NULL, NULL, 'images/IMG_1190.JPG', true);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale)
VALUES (1952, 1700, 'hdfgh', 'dfghdf', 6345, NULL, NULL, 'images/IMG_9726.jpg', true);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale)
VALUES (2000, 1750, 'Sale Boiler', 'bdsfas', 1000, NULL, 40, 'images/IMG_1066.JPG', false);

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image, sale)
VALUES (2001, 1750, 'rthdfgh', 'hdfghd', 555, NULL, 10, 'images/IMG_1066.JPG', false);

--
-- Data for table public.settings (OID = 24723) (LIMIT 0,19)
--
INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (1650, 1900, 'price', '123452');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (1651, 1900, 'description', 'gsdfg');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (1652, 1900, 'power', '542');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (1700, 1950, 'price', '2345');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (1701, 1950, 'description', 'sdfg');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (1702, 1951, 'price', '5345');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (1703, 1951, 'description', 'hdfgh');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (1704, 1952, 'price', '3456');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (1705, 1952, 'description', 'erty');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (1706, 1953, 'price', '63456');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (1707, 1953, 'description', 'yrety');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (1708, 1954, 'rrrrrrrr', '75647');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (1709, 1955, 'rrrrrrrr', 'uityu');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (1710, 1956, 'rrrrrrrr', '867');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (1711, 1957, 'rrrrrrrr', '765');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (1712, 1958, 'rrrrrrrr', 'ity');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (1713, 1959, 'rrrrrrrr', '756');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (1750, 2000, 'rrrrrrrr', 'ioup');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (1751, 2001, 'rrrrrrrr', 'tryrte');

--
-- Data for table public.user_role (OID = 24726) (LIMIT 0,2)
--
INSERT INTO user_role (user_id, role_id)
VALUES (1, 1);

INSERT INTO user_role (user_id, role_id)
VALUES (1, 2);

--
-- Data for table public.category_settings (OID = 33005) (LIMIT 0,10)
--
INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (808, 'price', 'NUMBER', 1658, NULL);

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (809, 'description', 'TEXT', 1658, NULL);

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (810, 'power', 'TEXT', 1658, NULL);

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (811, '', 'TEXT', 1659, NULL);

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (850, 'price', 'NUMBER', 1700, NULL);

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (851, 'description', 'TEXT', 1700, NULL);

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (900, 'rrrrrrrr', 'TEXT', 1750, '');

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (901, '', 'TEXT', 1751, '');

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (950, '', 'TEXT', 1800, '');

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (951, ';kl;', 'TEXT', 1801, '');

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
SELECT pg_catalog.setval('product_id_seq', 40, true);
--
-- Data for sequence public.product_category_id_seq (OID = 24688)
--
SELECT pg_catalog.setval('product_category_id_seq', 36, true);
--
-- Data for sequence public.product_settings_id_seq (OID = 24690)
--
SELECT pg_catalog.setval('product_settings_id_seq', 35, true);
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
SELECT pg_catalog.setval('category_settings_id_seq', 19, true);
--
-- Comments
--
COMMENT ON SCHEMA public IS 'standard public schema';
