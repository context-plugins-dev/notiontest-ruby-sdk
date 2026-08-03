
# Databases Query Request

*This model accepts additional fields of type [Object](../../doc/models/object.md).*

## Structure

`DatabasesQueryRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `filter` | [`Object`](../../doc/models/object.md) | Optional | Filter conditions to apply. Supports compound filters using and/or as well as property-specific filters. |
| `sorts` | [`Array[Sort]`](../../doc/models/sort.md) | Optional | Sort conditions to order the results. Multiple sorts can be applied; they are processed in the order provided. |
| `start_cursor` | `String` | Optional | Pagination cursor from a previous response to continue fetching results. |
| `page_size` | `Integer` | Optional | Maximum number of results to return (max 100).<br><br>**Default**: `100`<br><br>**Constraints**: `<= 100` |
| `additional_properties` | [`Hash[String, Object]`](../../doc/models/object.md) | Optional | - |

## Example

```ruby
databases_query_request = DatabasesQueryRequest.new(
  filter: { 'key1' => 'val1', 'key2' => 'val2' },
  sorts: [
    Sort.new(
      property: 'property2',
      timestamp: Timestamp::CREATED_TIME,
      direction: Direction::ASCENDING,
      additional_properties: {
        'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
      }
    ),
    Sort.new(
      property: 'property2',
      timestamp: Timestamp::CREATED_TIME,
      direction: Direction::ASCENDING,
      additional_properties: {
        'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
      }
    )
  ],
  start_cursor: 'start_cursor6',
  page_size: 100,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

