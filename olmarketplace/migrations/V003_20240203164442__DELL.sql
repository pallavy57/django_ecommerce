insert into products.product_category (id, name, description, created_at, modified_at, deleted_at)
values(1,'beauty', 'This is beauty product category', NOW(),NOW(),NOW());

insert into products.product_category (id, name, description, created_at, modified_at, deleted_at)
values(2,'health', 'This is health product category', NOW(),NOW(),NOW());

insert into products.product_category (id, name, description, created_at, modified_at, deleted_at)
values(3,'grocery', 'This is grocery product category', NOW(),NOW(),NOW());

insert into products.product_category (id, name, description, created_at, modified_at, deleted_at)
values(4,'books', 'This is books product category', NOW(),NOW(),NOW());

insert into products.product_category (id, name, description, created_at, modified_at, deleted_at)
values(5,'sports', 'This is sports product category', NOW(),NOW(),NOW());

insert into products.product_category (id, name, description, created_at, modified_at, deleted_at)
values(6,'fitness', 'This is fitness product category', NOW(),NOW(),NOW());

insert into products.product_category (id, name, description, created_at, modified_at, deleted_at)
values(7,'movies', 'This is movies product category', NOW(),NOW(),NOW());

insert into products.product_category (id, name, description, created_at, modified_at, deleted_at)
values(8,'music', 'This is music product category', NOW(),NOW(),NOW());
insert into products.product_category (id, name, description, created_at, modified_at, deleted_at)
values(9,'kitchen', 'This is kitchen product category', NOW(),NOW(),NOW());

insert into products.product_category (id, name, description, created_at, modified_at, deleted_at)
values(10,'pets', 'This is pets product category', NOW(),NOW(),NOW());



insert into products.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(1,3444,NOW(),NOW(),NOW());

insert into products.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(2,3444,NOW(),NOW(),NOW());

insert into products.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(3,3444,NOW(),NOW(),NOW());

insert into products.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(4,3444,NOW(),NOW(),NOW());

insert into products.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(5,3444,NOW(),NOW(),NOW());

insert into products.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(6,3444,NOW(),NOW(),NOW());

insert into products.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(7,4,NOW(),NOW(),NOW());

insert into products.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(8,0,NOW(),NOW(),NOW());

insert into products.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(9,67,NOW(),NOW(),NOW());

insert into products.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(10,4,NOW(),NOW(),NOW());

insert into products.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(11,4,NOW(),NOW(),NOW());

insert into products.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(12,55,NOW(),NOW(),NOW());

insert into products.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(13,54,NOW(),NOW(),NOW());

insert into products.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(14,89,NOW(),NOW(),NOW());

insert into products.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(15,67,NOW(),NOW(),NOW());

insert into products.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(16,4,NOW(),NOW(),NOW());

insert into products.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(17,0,NOW(),NOW(),NOW());
insert into products.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(18,0,NOW(),NOW(),NOW());
insert into products.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(19,0,NOW(),NOW(),NOW());

insert into products.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(20,3,NOW(),NOW(),NOW());


insert into products.discount  (id, name, description, discount_percent, active, created_at, modified_at, deleted_at)
values(1,'discount 1','discount 1','25', true,NOW(),NOW(),NOW());

insert into products.discount  (id, name, description, discount_percent, active, created_at, modified_at, deleted_at)
values(2,'discount 2','discount 2','15', true,NOW(),NOW(),NOW());


insert into products.discount  (id, name, description, discount_percent, active, created_at, modified_at, deleted_at)
values(3,'discount 3','discount 3','10', true,NOW(),NOW(),NOW());


insert into products.discount  (id, name, description, discount_percent, active, created_at, modified_at, deleted_at)
values(4,'discount 4','discount 4','0', true,NOW(),NOW(),NOW());

insert into products.discount  (id, name, description, discount_percent, active, created_at, modified_at, deleted_at)
values(5,'discount 5','discount 5','5', true,NOW(),NOW(),NOW());




insert into products.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(1,'product1','product1','ABC-12345-S-BL', '345', 10,12, 2, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031354/ib9yivqzadhb7x4rser3.jpg');


insert into products.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(2,'product2','product2','ABC-123451-S-BL', '35', 10,1, 2, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031353/mrgmnxp14ya4feln5yaj.jpg');


insert into products.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(3,'product3','product3','ABC-123452-S-BL', '3452', 10,2, 1, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031349/ospgm1udghbneiw8cctf.jpg');

insert into products.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(4,'product4','product4','ABC-123453-S-BL', '3452', 4,3, 3, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031347/kmspo7ryxp4eaekrpaod.jpg');

insert into products.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(5,'product5','product5','ABC-123454-S-BL', '3415', 5,4, 4, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031344/teotcgrfgggtkamt0qpa.jpg');

insert into products.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(6,'product6','product6','ABC-123455-S-BL', '3455', 5,5, 5, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031342/piu2znf8tbjoqvtju2ro.webp');

insert into products.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(7,'product7','product7','ABC-123465-S-BL', '3455', 5,6, 2, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031341/dyg2d2ezcmjkocku8nrw.jpg');


insert into products.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(8,'product8','product8','ABC-123457-S-BL', '3245', 6,7, 1, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031340/gobdutcqb6jtfh59jnzu.jpg');

insert into products.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(9,'product9','product9','ABC-123458-S-BL', '1345', 1,8, 3, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031339/oq3hv5ycmobrnvrqupiu.jpg');

insert into products.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(10,'product10','product10','ABC-123459-S-BL', '2345', 1,9, 4, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031337/yg6albawkdbxtrihutob.jpg');

insert into products.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(11,'product11','product11','ABC-1234510-S-BL', '6345', 1,10, 5, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031323/wc4yffoq9cm7u1tnscr1.jpg');

insert into products.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(12,'product12','product12','ABC-1234511-S-BL', '3345', 1,11, 2, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031186/tintq2brhaxj7re6u05u.jpg');

insert into products.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(13,'product13','product13','ABC-1234512-S-BL', '345', 9,13, 1, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031185/augr9q5ixikqwakhwpdp.jpg');

insert into products.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(14,'product14','product14','ABC-1234513-S-BL', '3345', 7,14, 3, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031179/hlquc9zwcoih2jwxwj0h.jpg');

insert into products.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(15,'product15','product15','ABC-1234514-S-BL', '345', 10,15, 4, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031175/hbnjeq0i1onahjn7hq0g.jpg');

insert into products.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(16,'product16','product16','ABC-1234515-S-BL', '2345', 6,16, 5, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031170/vnc5znkgtxnvvyj1cwnz.jpg');
insert into products.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(17,'product17','product17','ABC-1234516-S-BL', '6345', 8,17, 2, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031166/l1mrigb9axax4krf0oh7.jpg');
insert into products.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(18,'product18','product18','ABC-1234517-S-BL', '2345', 4,18, 1, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031164/qv1i8hqlba1uwkamjuzc.jpg');
insert into products.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(19,'product19','product19','ABC-1234518-S-BL', '2345', 3,19, 3, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031150/nyihxydrcjpgemzyqmvy.jpg');
insert into products.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(20,'product20','product20','ABC-1234519-S-BL', '2345', 3,20, 4, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031139/oibv3uanx9a5iv3zrv0l.jpg');





insert into products.sellers (id, name, description)
values(1,'seller1','seller1');
insert into products.sellers (id, name, description)
values(2,'seller2','seller2');
insert into products.sellers (id, name, description)
values(3,'seller3','seller3');
insert into products.sellers (id, name, description)
values(4,'seller4','seller4');
insert into products.sellers (id, name, description)
values(5,'seller5','seller5');


insert into products.seller_product (id, seller_id,product_id)
values(1,1,20);
insert into products.seller_product (id, seller_id,product_id)
values(2,2,19);
insert into products.seller_product (id, seller_id,product_id)
values(3,3,18);
insert into products.seller_product (id, seller_id,product_id)
values(4,4,17);
insert into products.seller_product (id, seller_id,product_id)
values(5,5,16);
insert into products.seller_product (id, seller_id,product_id)
values(6,1,15);
insert into products.seller_product (id, seller_id,product_id)
values(7,2,14);
insert into products.seller_product (id, seller_id,product_id)
values(8,3,13);
insert into products.seller_product (id, seller_id,product_id)
values(9,4,12);
insert into products.seller_product (id, seller_id,product_id)
values(10,5,11);
insert into products.seller_product (id, seller_id,product_id)
values(11,1,10);
insert into products.seller_product (id, seller_id,product_id)
values(12,2,9);
insert into products.seller_product (id, seller_id,product_id)
values(13,3,8);
insert into products.seller_product (id, seller_id,product_id)
values(14,4,7);
insert into products.seller_product (id, seller_id,product_id)
values(15,5,6);
insert into products.seller_product (id, seller_id,product_id)
values(16,1,5);
insert into products.seller_product (id, seller_id,product_id)
values(17,2,4);
insert into products.seller_product (id, seller_id,product_id)
values(18,3,3);
insert into products.seller_product (id, seller_id,product_id)
values(19,4,2);
insert into products.seller_product (id, seller_id,product_id)
values(20,5,1);


insert into orders.order_details(id, user_id, created_at, modified_at)
values(1,43,NOW(),NOW());

insert into orders.order_details(id, user_id, created_at, modified_at)
values(2,44,NOW(),NOW());
insert into orders.order_details(id, user_id, created_at, modified_at)
values(3,45,NOW(),NOW());
insert into orders.order_details(id, user_id, created_at, modified_at)
values(4,46,NOW(),NOW());
insert into orders.order_details(id, user_id, created_at, modified_at)
values(5,47,NOW(),NOW());
insert into orders.order_details(id, user_id, created_at, modified_at)
values(6,43,NOW(),NOW());
insert into orders.order_details(id, user_id, created_at, modified_at)
values(7,44,NOW(),NOW());
insert into orders.order_details(id, user_id, created_at, modified_at)
values(8,45,NOW(),NOW());
insert into orders.order_details(id, user_id, created_at, modified_at)
values(9,46,NOW(),NOW());
insert into orders.order_details(id, user_id, created_at, modified_at)
values(10,47,NOW(),NOW());
insert into orders.order_details(id, user_id, created_at, modified_at)
values(11,43,NOW(),NOW());
insert into orders.order_details(id, user_id, created_at, modified_at)
values(12,44,NOW(),NOW());
insert into orders.order_details(id, user_id, created_at, modified_at)
values(13,45,NOW(),NOW());
insert into orders.order_details(id, user_id, created_at, modified_at)
values(14,46,NOW(),NOW());
insert into orders.order_details(id, user_id, created_at, modified_at)
values(15,47,NOW(),NOW());
insert into orders.order_details(id, user_id, created_at, modified_at)
values(16,43,NOW(),NOW());
insert into orders.order_details(id, user_id, created_at, modified_at)
values(17,44,NOW(),NOW());
insert into orders.order_details(id, user_id, created_at, modified_at)
values(18,45,NOW(),NOW());
insert into orders.order_details(id, user_id, created_at, modified_at)
values(19,46,NOW(),NOW());
insert into orders.order_details(id, user_id, created_at, modified_at)
values(20,47,NOW(),NOW());


insert into orders.order_product(id, order_id, product_id)
values(1,1,2);
insert into orders.order_product(id, order_id, product_id)
values(2,2,3);
insert into orders.order_product(id, order_id, product_id)
values(3,3,1);
insert into orders.order_product(id, order_id, product_id)
values(4,4,4);
insert into orders.order_product(id, order_id, product_id)
values(5,5,5);
insert into orders.order_product(id, order_id, product_id)
values(6,6,6);
insert into orders.order_product(id, order_id, product_id)
values(7,7,7);
insert into orders.order_product(id, order_id, product_id)
values(8,8,8);
insert into orders.order_product(id, order_id, product_id)
values(9,9,9);
insert into orders.order_product(id, order_id, product_id)
values(10,10,13);
insert into orders.order_product(id, order_id, product_id)
values(11,11,14);
insert into orders.order_product(id, order_id, product_id)
values(12,12,15);
insert into orders.order_product(id, order_id, product_id)
values(13,13,16);
insert into orders.order_product(id, order_id, product_id)
values(14,14,17);
insert into orders.order_product(id, order_id, product_id)
values(15,15,18);
insert into orders.order_product(id, order_id, product_id)
values(16,16,19);
insert into orders.order_product(id, order_id, product_id)
values(17,17,16);
insert into orders.order_product(id, order_id, product_id)
values(18,18,17);
insert into orders.order_product(id, order_id, product_id)
values(19,19,18);
insert into orders.order_product(id, order_id, product_id)
values(20,20,19);

UPDATE orders.order_product SET quantity=23 where id = 1;
UPDATE orders.order_product SET quantity=25 where id = 2;
UPDATE orders.order_product SET quantity=24 where id = 3;
UPDATE orders.order_product SET quantity=26 where id = 4;
UPDATE orders.order_product SET quantity=27 where id = 5;
UPDATE orders.order_product SET quantity=29 where id = 6;
UPDATE orders.order_product SET quantity=13 where id = 7;
UPDATE orders.order_product SET quantity=45 where id = 8;
UPDATE orders.order_product SET quantity=67 where id = 9;
UPDATE orders.order_product SET quantity=10 where id = 10;
UPDATE orders.order_product SET quantity=10 where id = 11;
UPDATE orders.order_product SET quantity=10 where id = 12;
UPDATE orders.order_product SET quantity=28 where id = 13;
UPDATE orders.order_product SET quantity=29 where id = 14;
UPDATE orders.order_product SET quantity=2 where id = 15;
UPDATE orders.order_product SET quantity=26 where id = 16;
UPDATE orders.order_product SET quantity=15 where id = 17;
UPDATE orders.order_product SET quantity=44 where id = 18;
UPDATE orders.order_product SET quantity=67 where id = 19;
UPDATE orders.order_product SET quantity=10 where id = 20;



insert into products."comments"(id, "text", likes, review, user_id)
values(1,'good',2, 4, 43);


insert into products."comments"(id, "text", likes, review, user_id)
values(2,'good',2, 4, 43);
insert into products."comments"(id, "text", likes, review, user_id)
values(3,'bad',12, 1, 44);
insert into products."comments"(id, "text", likes, review, user_id)
values(4,'nuetral',22, 2, 45);
insert into products."comments"(id, "text", likes, review, user_id)
values(5,'nuetral',32, 3, 46);
insert into products."comments"(id, "text", likes, review, user_id)
values(6,'nuetral',42, 4, 47);
insert into products."comments"(id, "text", likes, review, user_id)
values(7,'good',12, 4, 43);
insert into products."comments"(id, "text", likes, review, user_id)
values(8,'bad',12, 5, 44);
insert into products."comments"(id, "text", likes, review, user_id)
values(9,'nuetral',42, 1, 45);
insert into products."comments"(id, "text", likes, review, user_id)
values(10,'nuetral',62, 2, 46);
insert into products."comments"(id, "text", likes, review, user_id)
values(11,'nuetral',27, 3, 47);
insert into products."comments"(id, "text", likes, review, user_id)
values(12,'good',28, 4, 43);
insert into products."comments"(id, "text", likes, review, user_id)
values(13,'bad',29, 5, 44);
insert into products."comments"(id, "text", likes, review, user_id)
values(14,'nuetral',22, 1, 45);
insert into products."comments"(id, "text", likes, review, user_id)
values(15,'nuetral',3, 2, 46);
insert into products."comments"(id, "text", likes, review, user_id)
values(16,'nuetral',6, 3, 47);
insert into products."comments"(id, "text", likes, review, user_id)
values(17,'good',7, 5, 43);
insert into products."comments"(id, "text", likes, review, user_id)
values(18,'bad',8, 4, 44);
insert into products."comments"(id, "text", likes, review, user_id)
values(19,'nuetral',9, 5, 45);
insert into products."comments"(id, "text", likes, review, user_id)
values(20,'nuetral',10, 5, 46);
insert into products."comments"(id, "text", likes, review, user_id)
values(21,'nuetral',11, 5, 47);
insert into products."comments"(id, "text", likes, review, user_id)
values(22,'good',1, 4, 43);
insert into products."comments"(id, "text", likes, review, user_id)
values(23,'bad',3, 1, 44);
insert into products."comments"(id, "text", likes, review, user_id)
values(24,'nuetral',4, 2, 45);
insert into products."comments"(id, "text", likes, review, user_id)
values(25,'nuetral',6, 3, 46);
insert into products."comments"(id, "text", likes, review, user_id)
values(26,'nuetral',9, 4, 47);
insert into products."comments"(id, "text", likes, review, user_id)
values(27,'nuetral',32, 5, 47);
insert into products."comments"(id, "text", likes, review, user_id)
values(28,'good',33, 3, 43);
insert into products."comments"(id, "text", likes, review, user_id)
values(29,'bad',2, 5, 44);
insert into products."comments"(id, "text", likes, review, user_id)
values(30,'bad',2, 4, 44);


insert into products.product_comments(id, product_id, comment_id)
values(31,1,31);
insert into products.product_comments(id, product_id, comment_id)
values(32,2,32);
insert into products.product_comments(id, product_id, comment_id)
values(33,3,33);
insert into products.product_comments(id, product_id, comment_id)
values(34,4,34);
insert into products.product_comments(id, product_id, comment_id)
values(35,5,35);
insert into products.product_comments(id, product_id, comment_id)
values(36,6,36);
insert into products.product_comments(id, product_id, comment_id)
values(37,7,37);
insert into products.product_comments(id, product_id, comment_id)
values(38,8,38);
insert into products.product_comments(id, product_id, comment_id)
values(39,9,39);
insert into products.product_comments(id, product_id, comment_id)
values(40,10,40);
insert into products.product_comments(id, product_id, comment_id)
values(41,11,41);
insert into products.product_comments(id, product_id, comment_id)
values(42,12,42);
insert into products.product_comments(id, product_id, comment_id)
values(43,13,43);
insert into products.product_comments(id, product_id, comment_id)
values(44,14,44);
insert into products.product_comments(id, product_id, comment_id)
values(45,15,45);
insert into products.product_comments(id, product_id, comment_id)
values(46,16,46);
insert into products.product_comments(id, product_id, comment_id)
values(47,17,47);
insert into products.product_comments(id, product_id, comment_id)
values(48,18,48);
insert into products.product_comments(id, product_id, comment_id)
values(49,19,49);
insert into products.product_comments(id, product_id, comment_id)
values(50,20,50);
insert into products.product_comments(id, product_id, comment_id)
values(51,1,51);
insert into products.product_comments(id, product_id, comment_id)
values(52,2,52);
insert into products.product_comments(id, product_id, comment_id)
values(53,3,53);
insert into products.product_comments(id, product_id, comment_id)
values(54,4,54);
insert into products.product_comments(id, product_id, comment_id)
values(55,5,55);
insert into products.product_comments(id, product_id, comment_id)
values(56,6,56);
insert into products.product_comments(id, product_id, comment_id)
values(57,7,57);
insert into products.product_comments(id, product_id, comment_id)
values(58,8,58);
insert into products.product_comments(id, product_id, comment_id)
values(59,9,59);
insert into products.product_comments(id, product_id, comment_id)
values(60,10,60);


update products."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=1;

update products."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=2;

 update products."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=3;

 update products."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=4;

 update products."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=5;

 update products."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=6;

 update products."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=7;

 update products."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=8;

 update products."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=9;

 update products."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=10;

 update products."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=11;

 update products."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=12;

 update products."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=13;

 update products."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=14;

 update products."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=15;

 update products."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=16;

 update products."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=17;

 update products."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=18;


 update products."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=19;

 update products."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=20;

 update products."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=21;

 update products."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=22;

 update products."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=23;

 update products."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=24;

 update products."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=25;

 update products."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=26;

 update products."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=27;

 update products."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=28;

 update products."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=29;

 update products."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=30;


insert into products."comments"(id, "text", likes, review, user_id)
values(31,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',2, 4, 43);


insert into products."comments"(id, "text", likes, review, user_id)
values(32,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',2, 4, 43);
insert into products."comments"(id, "text", likes, review, user_id)
values(33,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',12, 3, 44);
insert into products."comments"(id, "text", likes, review, user_id)
values(34,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',22, 2, 45);
insert into products."comments"(id, "text", likes, review, user_id)
values(35,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',32, 3, 46);
insert into products."comments"(id, "text", likes, review, user_id)
values(36,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',42, 4, 47);
insert into products."comments"(id, "text", likes, review, user_id)
values(37,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',12, 4, 43);
insert into products."comments"(id, "text", likes, review, user_id)
values(38,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',12, 5, 44);
insert into products."comments"(id, "text", likes, review, user_id)
values(39,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',42, 1, 45);
insert into products."comments"(id, "text", likes, review, user_id)
values(40,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',62, 2, 46);
insert into products."comments"(id, "text", likes, review, user_id)
values(41,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',27, 3, 47);
insert into products."comments"(id, "text", likes, review, user_id)
values(42,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',28, 4, 43);
insert into products."comments"(id, "text", likes, review, user_id)
values(43,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',29, 5, 44);
insert into products."comments"(id, "text", likes, review, user_id)
values(44,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',22, 1, 45);
insert into products."comments"(id, "text", likes, review, user_id)
values(45,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',3, 2, 46);
insert into products."comments"(id, "text", likes, review, user_id)
values(46,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',6, 3, 47);
insert into products."comments"(id, "text", likes, review, user_id)
values(47,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',7, 5, 43);
insert into products."comments"(id, "text", likes, review, user_id)
values(48,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',8, 4, 44);
insert into products."comments"(id, "text", likes, review, user_id)
values(49,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',9, 5, 45);
insert into products."comments"(id, "text", likes, review, user_id)
values(50,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',10, 5, 46);
insert into products."comments"(id, "text", likes, review, user_id)
values(51,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',11, 5, 47);
insert into products."comments"(id, "text", likes, review, user_id)
values(52,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',1, 4, 43);
insert into products."comments"(id, "text", likes, review, user_id)
values(53,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',3, 1, 44);
insert into products."comments"(id, "text", likes, review, user_id)
values(54,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',4, 2, 45);
insert into products."comments"(id, "text", likes, review, user_id)
values(55,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',6, 3, 46);
insert into products."comments"(id, "text", likes, review, user_id)
values(56,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',9, 4, 47);
insert into products."comments"(id, "text", likes, review, user_id)
values(57,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',32, 5, 47);
insert into products."comments"(id, "text", likes, review, user_id)
values(58,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',33, 3, 43);
insert into products."comments"(id, "text", likes, review, user_id)
values(59,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',2, 5, 44);
insert into products."comments"(id, "text", likes, review, user_id)
values(60,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',2, 4, 44);











UPDATE products.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 1;
UPDATE products.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 2;
UPDATE products.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 3;
UPDATE products.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the  standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 4;
UPDATE products.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the  standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 5;
UPDATE products.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 6;
UPDATE products.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 7;
UPDATE products.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 8;
UPDATE products.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the  standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 9;
UPDATE products.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 10;
UPDATE products.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the  standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 11;
UPDATE products.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the  standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 12;
UPDATE products.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 13;
UPDATE products.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 14;
UPDATE products.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the  standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 15;
UPDATE products.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the  standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 16;
UPDATE products.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the  standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 17;
UPDATE products.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the  standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 18;
UPDATE products.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the  standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 19;
UPDATE products.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the  standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 20;