insert into kitchen (id, name) values (1, 'Thailand');
insert into kitchen (id, name) values (2, 'Indiana');

insert into restore (id, name, shipping_fee, kitchen_id) values (1, 'Thai Gourmet', 10, 1);
insert into restore (id, name, shipping_fee, kitchen_id) values (2, 'Thai Delivery', 9.50, 1);
insert into restore (id, name, shipping_fee, kitchen_id) values (3, 'Tuk Tuk Comida Indiana', 15, 2);

insert into state (id, name) values (1, 'Minas Gerais');
insert into state (id, name) values (2, 'São Paulo');
insert into state (id, name) values (3, 'Ceará');

insert into city (id, name, state_id) values (1, 'Uberlândia', 1);
insert into city (id, name, state_id) values (2, 'Belo Horizonte', 1);
insert into city (id, name, state_id) values (3, 'São Paulo', 2);
insert into city (id, name, state_id) values (4, 'Campinas', 2);
insert into city (id, name, state_id) values (5, 'Fortaleza', 3);

insert into payment_method (id, description) values (1, 'Cartão de crédito');
insert into payment_method (id, description) values (2, 'Cartão de débito');
insert into payment_method (id, description) values (3, 'Dinheiro');

insert into permission (id, name, description) values (1, 'CONSULTAR_COZINHAS', 'Permite consultar cozinhas');
insert into permission (id, name, description) values (2, 'EDITAR_COZINHAS', 'Permite editar cozinhas');

insert into restore_payment_method (restore_id, payment_method_id) values (1, 1), (1, 2), (1, 3), (2, 3), (3, 2), (3, 3);