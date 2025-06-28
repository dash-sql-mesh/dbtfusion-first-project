with
    dime_localidades as (
        select
            localidade_id as id_localidade,
            cidade as nm_cidade,
            estado as nm_uf,
            pais as nm_pais,
            cep as nu_cep
        from
            {{ source('stage', 'stg_localidade') }}
    )

select * from dime_localidades
