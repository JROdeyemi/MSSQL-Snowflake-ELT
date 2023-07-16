{% macro execute_stored_procedure() %}
    {{ run_sql("
        CALL dwh.LoadDimCity();
    ") }}
    
{% endmacro %}
