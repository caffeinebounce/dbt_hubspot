{% macro get_ticket_pipeline_columns() %}

{% set columns = [
    {"name": "_deleted", "datatype": "boolean"},
    {"name": "_synced_at", "datatype": dbt.type_timestamp()},
    {"name": "active", "datatype": "boolean"},
    {"name": "display_order", "datatype": dbt.type_int()},
    {"name": "label", "datatype": dbt.type_string()},
    {"name": "object_type_id", "datatype": dbt.type_string()},
    {"name": "pipeline_id", "datatype": dbt.type_string()},
    {"name": "created_at", "datatype": dbt.type_timestamp()},
    {"name": "updated_at", "datatype": dbt.type_timestamp()}
] %}

{{ return(columns) }}

{% endmacro %}
