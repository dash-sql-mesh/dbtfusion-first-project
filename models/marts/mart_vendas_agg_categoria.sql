with
    vendas_por_categoria as (
        select
            produto.ds_categoria_produto,
            sum(venda.qt_venda) as qt_vendida,
            round(sum(venda.vr_venda), 2) as vr_vendido
        from
            {{ ref('fato_vendas') }} venda
        join
            {{ ref('dime_produtos') }} produto on venda.id_produto = produto.id_produto
        group by
            produto.ds_categoria_produto
    )

select * from vendas_por_categoria
