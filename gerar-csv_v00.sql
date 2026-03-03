DECLARE
    l_context apex_exec.t_context;
    l_export  apex_data_export.t_export;
    l_params  apex_exec.t_parameters; -- Parâmetro adicionado
BEGIN

    l_context := apex_exec.open_query_context(
        p_location       => apex_exec.c_location_local_db,
        p_sql_query      => 'SELECT 
                                NU_SEQ_TRANS       AS "nu-seq-trans",
                                CO_TRANS           AS "cod-trans",
                                CO_MOD_TRANS       AS "cod-mod-trans",
                                NU_CPF_USUARIO     AS "codusu",
                                SG_UF_OR_TRANS     AS "uf-or-trans",
                                SG_UF_ORIG_TRANSM  AS "uf-orig-transm",
                                SG_UF_DES_TRANSM   AS "uf-des-transm",
                                CO_COND_TRANS      AS "cond-trans",
                                NU_TAM_TRANS       AS "tam-trans",
                                CO_RET_TRANS       AS "cod-ret-trans",
                                NU_DIA_JULIANO     AS "dia-juliano",
                                TP_CHAVE           AS "tipo-chave",
                                NU_CNH             AS "numero-cnh",
                                TP_EVENTO          AS "tipo-evento",
                                TP_ATUALIZACAO     AS "tipo-atualizacao",
                                CO_CURSO           AS "codigo-curso",
                                CO_MODALIDADE      AS "modalidade",
                                NU_CERTIFICADO     AS "numero certificado",
                                DT_INICIO_CURSO    AS "data-inicio-curso",
                                DT_FIM_CURSO       AS "data-fim-curso",
                                NU_CARGA_HORARIA   AS "carga-horaria",
                                NU_CNPJ_ENTIDADE   AS "cnpj-entidade-crede",
                                NU_CPF_INSTRUTOR   AS "cpf-instrutor",
                                CO_MUNICIPIO_CURSO AS "municipio-curso",
                                SG_UF_CURSO        AS "uf-curso",
                                DT_VALIDADE        AS "data-validade",
                                SG_CATEGORIA       AS "categoria",
                                DS_OBSERVACOES     AS "observacoes-curso"
                            FROM RNCH_DEP_TB_ETL_FINAL
                            ORDER BY NU_SEQ_TRANS ASC'
    );

    l_export := apex_data_export.export(
        p_context       => l_context,
        p_format        => apex_data_export.c_format_csv,
        p_file_name     => 'PREPARO_ETL_FINAL',
        p_csv_separator => ','
    );

    apex_exec.close(l_context);
    apex_data_export.download( p_export => l_export );
EXCEPTION WHEN OTHERS THEN
    apex_exec.close(l_context);
    RAISE;
END;
