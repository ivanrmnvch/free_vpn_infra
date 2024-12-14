create table digiseller_parameters
(
    id   integer                 not null
        constraint digiseller_parameters_pk
            primary key,
    name varchar                 not null,
    created_at     timestamp default now() not null,
    updated_at     timestamp default now() not null
);

comment on table digiseller_parameters is 'Таблица параметров товаров в магазине digiseller';
comment on column digiseller_parameters.parameter_id is 'ID параметра';
comment on constraint digiseller_parameters_pk on digiseller_parameters is 'ID параметра';
comment on column digiseller_parameters.parameter_name is 'Название параметра';
comment on column digiseller_parameters.created_at is 'Дата создания';
comment on column digiseller_parameters.updated_at is 'Дата обновления';

