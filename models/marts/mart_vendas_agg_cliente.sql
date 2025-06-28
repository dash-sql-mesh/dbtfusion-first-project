with
    vendas_agrupadas as (
        select
            venda.id_cliente,
            cliente.nm_cliente,
            sum(venda.qt_venda) as qt_item_comprado,
            round(sum(venda.vr_venda), 2) as vr_gasto
        from
            {{ ref('fato_vendas') }} venda
        join
            {{ ref('dime_clientes') }} cliente on venda.id_cliente = cliente.id_cliente
        group by
            venda.id_cliente, cliente.nm_cliente
    )

select * from vendas_agrupadas
