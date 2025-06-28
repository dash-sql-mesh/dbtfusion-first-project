with
    fato_vendas as (
        select
            data_id as id_data,
            cliente_id as id_cliente,
            localidade_id as id_localidade,
            produto_id as id_produto,
            cast(quantidade as int64) as qt_venda,
            cast(total_venda as numeric) as vr_venda
        from
            {{ source('stage', 'stg_vendas') }}
    )

select * from fato_vendas
