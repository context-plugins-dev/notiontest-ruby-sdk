
# Search Request

*This model accepts additional fields of type [Object](../../doc/models/object.md).*

## Structure

`SearchRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `query` | `String` | Optional | The text to search for in page and database titles. If omitted, returns all pages and databases. |
| `filter` | [`Filter`](../../doc/models/filter.md) | Optional | Filter conditions. Currently only supports filtering by object type (page or database). |
| `sort` | [`Sort1`](../../doc/models/sort-1.md) | Optional | Sort conditions for the results. |
| `start_cursor` | `String` | Optional | Pagination cursor to continue fetching results. |
| `page_size` | `Integer` | Optional | Maximum number of results to return (max 100).<br><br>**Default**: `100`<br><br>**Constraints**: `<= 100` |
| `additional_properties` | [`Hash[String, Object]`](../../doc/models/object.md) | Optional | - |

## Example

```ruby
search_request = SearchRequest.new(
  query: 'query6',
  filter: Filter.new(
    value: Value::PAGE,
    property: Property::OBJECT,
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  sort: Sort1.new(
    direction: Direction::ASCENDING,
    timestamp: Timestamp1::LAST_EDITED_TIME,
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  start_cursor: 'start_cursor4',
  page_size: 100,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

