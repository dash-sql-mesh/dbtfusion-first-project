with
    dime_clientes as (
        select
            cliente_id as id_cliente,
            nome as nm_cliente,
            idade as nu_idade,
            email as ds_email,
            genero as sg_genero
        from
            {{ source('stage', 'stg_clientes') }}

    )

select * from dime_clientes