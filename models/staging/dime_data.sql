with
    dime_data as (
        select
            data_id as id_data,
            data as dt_calendario,
            ano as aa_calendario,
            mes as mm_calendario,
            dia as dd_calendario,
            dia_da_semana as ds_dia_semana,
            trimestre as nu_trimestre,
            cast(fim_de_semana as boolean) as fl_fim_semana
        from
            {{ source('stage', 'stg_data') }}
    )

select * from dime_data
