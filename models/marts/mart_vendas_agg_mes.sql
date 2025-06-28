# Projeto 7 - Pipeline de Engenharia Analítica com Python, Docker, DBT, BigQuery e Looker Studio

with
    vendas_mensais as (
        select
            data.mm_calendario,
            data.aa_calendario,
            data.nu_trimestre,
            sum(venda.qt_venda) as qt_venda,
            sum(venda.vr_venda) as vr_venda
        from
            {{ ref('fato_vendas') }} venda
        join
            {{ ref('dime_data') }} data on venda.id_data = data.id_data
        group by
            data.mm_calendario, data.aa_calendario, data.nu_trimestre
    )

select * from vendas_mensais
