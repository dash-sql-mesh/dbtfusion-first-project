with
    dime_produtos as (
        select
            produto_id as id_produto,
            nome_produto as nm_produto,
            categoria as ds_categoria_produto,
            cast(preco as numeric) as vr_preco
        from
            {{ source('stage', 'stg_produtos') }}
    )

select * from dime_produtos
