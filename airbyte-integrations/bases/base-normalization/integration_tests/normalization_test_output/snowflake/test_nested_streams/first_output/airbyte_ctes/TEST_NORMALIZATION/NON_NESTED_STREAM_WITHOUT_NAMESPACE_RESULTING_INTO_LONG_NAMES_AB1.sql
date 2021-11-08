
  create or replace  view "AIRBYTE_DATABASE"._AIRBYTE_TEST_NORMALIZATION."NON_NESTED_STREAM_WITHOUT_NAMESPACE_RESULTING_INTO_LONG_NAMES_AB1"  as (
    
-- SQL model to parse JSON blob stored in a single column and extract into separated field columns as described by the JSON Schema
select
    to_varchar(get_path(parse_json(_airbyte_data), '"id"')) as ID,
    to_varchar(get_path(parse_json(_airbyte_data), '"date"')) as DATE,
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    convert_timezone('UTC', current_timestamp()) as _AIRBYTE_NORMALIZED_AT
from "AIRBYTE_DATABASE".TEST_NORMALIZATION._AIRBYTE_RAW_NON_NESTED_STREAM_WITHOUT_NAMESPACE_RESULTING_INTO_LONG_NAMES as table_alias
-- NON_NESTED_STREAM_WITHOUT_NAMESPACE_RESULTING_INTO_LONG_NAMES
where 1 = 1
  );