-- Adding kitchen
insert into tbl_kitchen (id, name) values (1, 'Tailandesa');
insert into tbl_kitchen (id, name) values (2, 'Indiana');
insert into tbl_kitchen (id, name) values (3, 'Argentina');
insert into tbl_kitchen (id, name) values (4, 'Brasileira');

-- Adding state
insert into tbl_state (id, name) values (1, 'Minas Gerais');
insert into tbl_state (id, name) values (2, 'São Paulo');
insert into tbl_state (id, name) values (3, 'Ceará');

-- Adding city
insert into tbl_city (id, name, state_id) values (1, 'Uberlândia', 1);
insert into tbl_city (id, name, state_id) values (2, 'Belo Horizonte', 1);
insert into tbl_city (id, name, state_id) values (3, 'São Paulo', 2);
insert into tbl_city (id, name, state_id) values (4, 'Campinas', 2);
insert into tbl_city (id, name, state_id) values (5, 'Fortaleza', 3);

-- Adding restaurants
insert into tbl_restaurant (id, name, shipping_fee, kitchen_id, creation_date_time, updated_date_time, address_city_id, address_cep, address_public_place, address_number, address_district) values (1, 'Thai Gourmet', 10, 1, utc_timestamp, utc_timestamp, 1, '38400-999', 'Rua João Pinheiro', '1000', 'Centro');
insert into tbl_restaurant (id, name, shipping_fee, kitchen_id, creation_date_time, updated_date_time) values (2, 'Thai Delivery', 9.50, 1, utc_timestamp, utc_timestamp);
insert into tbl_restaurant (id, name, shipping_fee, kitchen_id, creation_date_time, updated_date_time) values (3, 'Tuk Tuk Comida Indiana', 15, 2, utc_timestamp, utc_timestamp);
insert into tbl_restaurant (id, name, shipping_fee, kitchen_id, creation_date_time, updated_date_time) values (4, 'Java Steakhouse', 12, 3, utc_timestamp, utc_timestamp);
insert into tbl_restaurant (id, name, shipping_fee, kitchen_id, creation_date_time, updated_date_time) values (5, 'Lanchonete do Tio Sam', 11, 4, utc_timestamp, utc_timestamp);
insert into tbl_restaurant (id, name, shipping_fee, kitchen_id, creation_date_time, updated_date_time) values (6, 'Bar da Maria', 6, 4, utc_timestamp, utc_timestamp);

-- Adding method payment
insert into tbl_payment_method (id, description) values (1, 'Cartão de crédito');
insert into tbl_payment_method (id, description) values (2, 'Cartão de débito');
insert into tbl_payment_method (id, description) values (3, 'Dinheiro');

-- Adding permissions
insert into tbl_permission (id, name, description) values (1, 'CONSULTAR_COZINHAS', 'Permite consultar cozinhas');
insert into tbl_permission (id, name, description) values (2, 'EDITAR_COZINHAS', 'Permite editar cozinhas');

-- Adding payment methods to the restaurants
insert into tbl_restaurant_payment_method (restaurant_id, payment_method_id) values (1, 1), (1, 2), (1, 3), (2, 3), (3, 2), (3, 3), (4, 1), (4, 2), (5, 1), (5, 2), (6, 3);

-- Adding products
insert into tbl_product (name, description, price, active, restaurant_id) values ('Porco com molho agridoce', 'Deliciosa carne suína ao molho especial', 78.90, 1, 1);
insert into tbl_product (name, description, price, active, restaurant_id) values ('Camarão tailandês', '16 camarões grandes ao molho picante', 110, 1, 1);
insert into tbl_product (name, description, price, active, restaurant_id) values ('Salada picante com carne grelhada', 'Salada de folhas com cortes finos de carne bovina grelhada e nosso molho especial de pimenta vermelha', 87.20, 1, 2);
insert into tbl_product (name, description, price, active, restaurant_id) values ('Garlic Naan', 'Pão tradicional indiano com cobertura de alho', 21, 1, 3);
insert into tbl_product (name, description, price, active, restaurant_id) values ('Murg Curry', 'Cubos de frango preparados com molho curry e especiarias', 43, 1, 3);
insert into tbl_product (name, description, price, active, restaurant_id) values ('Bife Ancho', 'Corte macio e suculento, com dois dedos de espessura, retirado da parte dianteira do contrafilé', 79, 1, 4);
insert into tbl_product (name, description, price, active, restaurant_id) values ('T-Bone', 'Corte muito saboroso, com um osso em formato de T, sendo de um lado o contrafilé e do outro o filé mignon', 89, 1, 4);
insert into tbl_product (name, description, price, active, restaurant_id) values ('Sanduíche X-Tudo', 'Sandubão com muito queijo, hamburger bovino, bacon, ovo, salada e maionese', 19, 1, 5);
insert into tbl_product (name, description, price, active, restaurant_id) values ('Espetinho de Cupim', 'Acompanha farinha, mandioca e vinagrete', 8, 1, 6);
