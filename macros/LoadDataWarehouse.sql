{% macro LoadDataWarehouse() %}
    {{ run_query("
        CALL dwh.LoadAllDataWarehouseTables();
    ") }}

{% endmacro %}
