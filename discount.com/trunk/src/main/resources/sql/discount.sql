-- SQL Manager 2011 for PostgreSQL 5.0.0.1
-- ---------------------------------------
-- Host      : localhost
-- Database  : alfero
-- Version   : PostgreSQL 9.2.3, compiled by Visual C++ build 1600, 64-bit



SET check_function_bodies = false;
--
-- Definition for sequence client_id_seq (OID = 16762) : 
--
SET search_path = public, pg_catalog;
CREATE SEQUENCE public.client_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence comment_id_seq (OID = 16764) : 
--
CREATE SEQUENCE public.comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence product_id_seq (OID = 16766) : 
--
CREATE SEQUENCE public.product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence product_category_id_seq (OID = 16768) : 
--
CREATE SEQUENCE public.product_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence product_settings_id_seq (OID = 16770) : 
--
CREATE SEQUENCE public.product_settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence user_id_seq (OID = 16772) : 
--
CREATE SEQUENCE public.user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence user_role_id_seq (OID = 16774) : 
--
CREATE SEQUENCE public.user_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table client (OID = 16776) : 
--
CREATE TABLE public.client (
    id integer NOT NULL,
    name text,
    type text
) WITHOUT OIDS;
--
-- Structure for table role (OID = 16782) : 
--
CREATE TABLE public.role (
    id integer NOT NULL,
    role text
) WITHOUT OIDS;
--
-- Structure for table users (OID = 16788) : 
--
CREATE TABLE public.users (
    id integer NOT NULL,
    login text,
    password text,
    email text,
    first_name text,
    last_name text,
    enabled boolean
) WITHOUT OIDS;
--
-- Structure for table category (OID = 16794) : 
--
CREATE TABLE public.category (
    id integer NOT NULL,
    name text NOT NULL,
    image text
) WITHOUT OIDS;
--
-- Structure for table product (OID = 16800) : 
--
CREATE TABLE public.product (
    id integer NOT NULL,
    product_category_id integer NOT NULL,
    name text NOT NULL,
    description text,
    price integer DEFAULT 1 NOT NULL,
    discount_price integer,
    discount integer,
    image text
) WITHOUT OIDS;
--
-- Structure for table comment (OID = 16807) : 
--
CREATE TABLE public.comment (
    id integer NOT NULL,
    user_id integer NOT NULL,
    product_id integer NOT NULL,
    content text
) WITHOUT OIDS;
--
-- Structure for table settings (OID = 16813) : 
--
CREATE TABLE public.settings (
    id integer NOT NULL,
    product_id integer NOT NULL,
    property_name text,
    property_value text
) WITHOUT OIDS;
--
-- Structure for table user_role (OID = 16819) : 
--
CREATE TABLE public.user_role (
    user_id integer NOT NULL,
    role_id integer NOT NULL
) WITHOUT OIDS;
--
-- Structure for table category_settings (OID = 16822) : 
--
CREATE TABLE public.category_settings (
    id integer NOT NULL,
    field_name text NOT NULL,
    field_type text NOT NULL,
    category_id integer NOT NULL,
    unit text
) WITHOUT OIDS;
--
-- Definition for sequence category_settings_id_seq (OID = 16828) : 
--
CREATE SEQUENCE public.category_settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Data for table public.client (OID = 16776) (LIMIT 0,4)
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
-- Data for table public.role (OID = 16782) (LIMIT 0,2)
--
INSERT INTO role (id, role)
VALUES (1, 'ROLE_ADMIN');

INSERT INTO role (id, role)
VALUES (2, 'ROLE_USER');

--
-- Data for table public.users (OID = 16788) (LIMIT 0,1)
--
INSERT INTO users (id, login, password, email, first_name, last_name, enabled)
VALUES (1, 'init user', '123456', 'init_user@discount.com', 'Init', 'User', true);

--
-- Data for table public.category (OID = 16794) (LIMIT 0,2)
--
INSERT INTO category (id, name, image)
VALUES (1658, 'boilers', 'images/default.jpg');

INSERT INTO category (id, name, image)
VALUES (1659, 'Plubling', 'images/default.jpg');

--
-- Data for table public.product (OID = 16800) (LIMIT 0,4)
--
INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image)
VALUES (2000, 1658, 'nnnnn', 'nnn', 5345, NULL, NULL, 'images/DSC09364.JPG');

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image)
VALUES (2001, 1659, 'erghert', 'gfdg', 2345, NULL, NULL, 'images/default.jpg');

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image)
VALUES (2002, 1658, 'gwert', 'werwt', 534, NULL, NULL, 'images/default.jpg');

INSERT INTO product (id, product_category_id, name, description, price, discount_price, discount, image)
VALUES (2003, 1658, 'gggg', 'ggg', 454, NULL, NULL, 'images/default.jpg');

--
-- Data for table public.settings (OID = 16813) (LIMIT 0,9)
--
INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (1700, 2000, NULL, NULL);

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (1701, 2000, NULL, 'rwer');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (1702, 2000, NULL, 'ferf');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (1703, 2000, NULL, '4324');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (1704, 2001, NULL, NULL);

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (1705, 2001, NULL, '');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (1706, 2002, NULL, '53');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (1707, 2002, NULL, 'ter');

INSERT INTO settings (id, product_id, property_name, property_value)
VALUES (1708, 2002, NULL, '543');

--
-- Data for table public.user_role (OID = 16819) (LIMIT 0,2)
--
INSERT INTO user_role (user_id, role_id)
VALUES (1, 1);

INSERT INTO user_role (user_id, role_id)
VALUES (1, 2);

--
-- Data for table public.category_settings (OID = 16822) (LIMIT 0,4)
--
INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (808, 'price', 'NUMBER', 1658, NULL);

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (809, 'description', 'TEXT', 1658, NULL);

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (810, 'power', 'TEXT', 1658, NULL);

INSERT INTO category_settings (id, field_name, field_type, category_id, unit)
VALUES (811, '', 'TEXT', 1659, NULL);

--
-- Definition for index client_pkey (OID = 16830) : 
--
ALTER TABLE ONLY client
    ADD CONSTRAINT client_pkey
    PRIMARY KEY (id);
--
-- Definition for index role_pkey (OID = 16832) : 
--
ALTER TABLE ONLY role
    ADD CONSTRAINT role_pkey
    PRIMARY KEY (id);
--
-- Definition for index user_pkey (OID = 16834) : 
--
ALTER TABLE ONLY users
    ADD CONSTRAINT user_pkey
    PRIMARY KEY (id);
--
-- Definition for index productCategory_pkey (OID = 16836) : 
--
ALTER TABLE ONLY category
    ADD CONSTRAINT "productCategory_pkey"
    PRIMARY KEY (id);
--
-- Definition for index product_pkey (OID = 16838) : 
--
ALTER TABLE ONLY product
    ADD CONSTRAINT product_pkey
    PRIMARY KEY (id);
--
-- Definition for index comment_pkey (OID = 16840) : 
--
ALTER TABLE ONLY comment
    ADD CONSTRAINT comment_pkey
    PRIMARY KEY (id);
--
-- Definition for index productSettings_pkey (OID = 16842) : 
--
ALTER TABLE ONLY settings
    ADD CONSTRAINT "productSettings_pkey"
    PRIMARY KEY (id);
--
-- Definition for index comment_product_id_fkey (OID = 16844) : 
--
ALTER TABLE ONLY comment
    ADD CONSTRAINT comment_product_id_fkey
    FOREIGN KEY (product_id) REFERENCES product(id);
--
-- Definition for index comment_user_id_fkey (OID = 16849) : 
--
ALTER TABLE ONLY comment
    ADD CONSTRAINT comment_user_id_fkey
    FOREIGN KEY (user_id) REFERENCES users(id);
--
-- Definition for index user_role_pkey (OID = 16854) : 
--
ALTER TABLE ONLY user_role
    ADD CONSTRAINT user_role_pkey
    PRIMARY KEY (user_id, role_id);
--
-- Definition for index settings_product_id_fkey (OID = 16856) : 
--
ALTER TABLE ONLY settings
    ADD CONSTRAINT settings_product_id_fkey
    FOREIGN KEY (product_id) REFERENCES product(id);
--
-- Definition for index user_role_roleId_fkey (OID = 16861) : 
--
ALTER TABLE ONLY user_role
    ADD CONSTRAINT "user_role_roleId_fkey"
    FOREIGN KEY (role_id) REFERENCES role(id);
--
-- Definition for index user_role_userId_fkey (OID = 16866) : 
--
ALTER TABLE ONLY user_role
    ADD CONSTRAINT "user_role_userId_fkey"
    FOREIGN KEY (user_id) REFERENCES users(id);
--
-- Definition for index category_settings_pkey (OID = 16871) : 
--
ALTER TABLE ONLY category_settings
    ADD CONSTRAINT category_settings_pkey
    PRIMARY KEY (id);
--
-- Definition for index category_settings_fk (OID = 16873) : 
--
ALTER TABLE ONLY category_settings
    ADD CONSTRAINT category_settings_fk
    FOREIGN KEY (category_id) REFERENCES category(id);
--
-- Data for sequence public.client_id_seq (OID = 16762)
--
SELECT pg_catalog.setval('client_id_seq', 94, true);
--
-- Data for sequence public.comment_id_seq (OID = 16764)
--
SELECT pg_catalog.setval('comment_id_seq', 1, false);
--
-- Data for sequence public.product_id_seq (OID = 16766)
--
SELECT pg_catalog.setval('product_id_seq', 43, true);
--
-- Data for sequence public.product_category_id_seq (OID = 16768)
--
SELECT pg_catalog.setval('product_category_id_seq', 36, true);
--
-- Data for sequence public.product_settings_id_seq (OID = 16770)
--
SELECT pg_catalog.setval('product_settings_id_seq', 37, true);
--
-- Data for sequence public.user_id_seq (OID = 16772)
--
SELECT pg_catalog.setval('user_id_seq', 65, true);
--
-- Data for sequence public.user_role_id_seq (OID = 16774)
--
SELECT pg_catalog.setval('user_role_id_seq', 10, true);
--
-- Data for sequence public.category_settings_id_seq (OID = 16828)
--
SELECT pg_catalog.setval('category_settings_id_seq', 19, true);
--
-- Comments
--
COMMENT ON SCHEMA public IS 'standard public schema';
