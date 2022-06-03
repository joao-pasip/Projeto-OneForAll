SELECT
    ROUND(MIN(PLAN.value), 2) AS "faturamento_minimo",
    ROUND(MAX(PLAN.value), 2) AS "faturamento_maximo",
    ROUND(AVG(PLAN.value), 2) AS "faturamento_medio",
    ROUND(SUM(PLAN.value), 2) AS "faturamento_total"
FROM
    SpotifyClone.plans AS PLAN
    JOIN SpotifyClone.user AS USUARIO ON PLAN.id = USUARIO.plan_id;
