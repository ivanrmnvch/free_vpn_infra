create table digiseller_parameter_values
(
    id           integer                 not null
        constraint digiseller_parameter_values_pk
            primary key,
    parameter_id integer                 not null
        constraint digiseller_parameter_values_digiseller_parameters_id_fk
            references digiseller_parameters,
    name         varchar                 not null,
    created_at   timestamp default now() not null,
    updated_at   timestamp default now() not null
);

comment on table digiseller_parameter_values is 'Таблица значений параметров в магазине digiseller';
comment on column digiseller_parameter_values.id is 'ID значения параметра';
comment on constraint digiseller_parameter_values_pk on digiseller_parameter_values is 'ID значения параметра';
comment on column digiseller_parameter_values.parameter_id is 'ID параметра';
comment on constraint digiseller_parameter_values_digiseller_parameters_id_fk on digiseller_parameter_values is 'ID параметра';
comment on column digiseller_parameter_values.name is 'Название значений параметра';
comment on column digiseller_parameter_values.created_at is 'Дата создания';
comment on column digiseller_parameter_values.updated_at is 'Дата обновления';

