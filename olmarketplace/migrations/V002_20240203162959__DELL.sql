CREATE TABLE product_category (
    id int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE),
    name char(128) NOT NULL,
    description char(128) NOT NULL,
    created_at timestamp NOT NULL,
    modified_at timestamp NOT NULL,
    deleted_at timestamp NOT NULL,
    CONSTRAINT product_category_pk PRIMARY KEY  (id)
);


CREATE TABLE product_inventory (
    id int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE),
    quantity int NOT NULL,
    created_at timestamp NOT NULL,
    modified_at timestamp NOT NULL,
    deleted_at timestamp NOT NULL,
    CONSTRAINT product_inventory_pk PRIMARY KEY  (id)
);


CREATE TABLE discount (
    id int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE),
    name char(128) NOT NULL,
    description char(128) NOT NULL,
    discount_percent char(128) NOT NULL,
    active boolean  NOT NULL,
    created_at timestamp NOT NULL,
    modified_at timestamp NOT NULL,
    deleted_at timestamp NOT NULL,
    CONSTRAINT discount_pk PRIMARY KEY  (id)
);

CREATE TABLE products (
    id int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE),
    name char(128) NOT NULL,
    description char(128) NOT NULL,
    SKU char(128) NOT NULL,
    price char(128)  NOT NULL,
    category_id int NOT NULL,
    inventory_id int NOT NULL,
    discount_id int ,
    created_at timestamp NOT NULL,
    modified_at timestamp NOT NULL,
    deleted_at timestamp NOT NULL,
    CONSTRAINT products_pk PRIMARY KEY  (id),
    CONSTRAINT products_fk_1 FOREIGN KEY(category_id) REFERENCES product_category(id),
    CONSTRAINT products_fk_2 FOREIGN KEY(inventory_id) REFERENCES product_inventory(id),
    CONSTRAINT products_fk_3 FOREIGN KEY(discount_id) REFERENCES discount(id)
);

ALTER TABLE products ADD COLUMN image varchar NOT NULL;

CREATE TABLE sellers (
    id int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE),
    name char(128) NOT NULL,
    description char(128) NOT NULL
);
ALTER TABLE sellers ADD PRIMARY KEY (id);
CREATE TABLE seller_product (
    id int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE),
    seller_id int NOT NULL,
    product_id int NOT NULL,
    CONSTRAINT seller_product_fk_1 FOREIGN KEY(seller_id) REFERENCES sellers(id),
    CONSTRAINT seller_product_fk_2 FOREIGN KEY(product_id) REFERENCES products(id)
);

ALTER TABLE orders.order_details DROP COLUMN quantity;
ALTER TABLE products.products DROP COLUMN selling_units;

CREATE TABLE orders.order_product (
    id int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE),
    order_id int NOT NULL,
    product_id int NOT NULL,
    CONSTRAINT order_product_pk PRIMARY KEY  (id),
    CONSTRAINT order_product_fk_1 FOREIGN KEY(order_id) REFERENCES orders.order_details(id),
    CONSTRAINT order_product_2 FOREIGN KEY(product_id) REFERENCES product.products(id)
);

ALTER TABLE orders.order_product ADD COLUMN quantity int  NULL;

CREATE TABLE products.comments (
    id int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE),
    text char(128) NULL,
    likes int DEFAULT 0,
    review int DEFAULT 0,
    user_id int NOT NULL,
    CONSTRAINT comments_pk PRIMARY KEY  (id),
    CONSTRAINT comments_fk_1 FOREIGN KEY(user_id) REFERENCES users_management.users(id)
 
);


CREATE TABLE products.product_comments (
    id int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE),
    product_id int NOT NULL,
    comment_id int NULL,
    CONSTRAINT product_comments_pk PRIMARY KEY  (id),
    CONSTRAINT product_comments_fk_1 FOREIGN KEY(product_id) REFERENCES products.products(id),
    CONSTRAINT product_comments_fk_2 FOREIGN KEY(comment_id) REFERENCES products.comments(id)
);