{# This macro generates a schema name based on the provided custom schema name or defaults to the target schema if none is provided. #}
{% macro generate_schema_name(custom_schema_name, node) -%} 
    {%- if custom_schema_name is none -%}{{ target.schema }}
    {%- else -%}{{ custom_schema_name | trim }}{%- endif -%}
{%- endmacro %}