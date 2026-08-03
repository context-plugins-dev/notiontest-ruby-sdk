
# Paginated List

A paginated list of results returned by list and query endpoints. All paginated responses follow the same structure with a results array, pagination info, and object type.

*This model accepts additional fields of type [Object](../../doc/models/object.md).*

## Structure

`PaginatedList`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `object` | [`Object`](../../doc/models/object.md) | Required | Always "list" for paginated responses. |
| `results` | [`Array[Object]`](../../doc/models/object.md) | Required | The array of result objects for the current page. |
| `next_cursor` | `String` | Required | The cursor to use for the next page of results, or null if there are no more results. |
| `has_more` | `TrueClass \| FalseClass` | Required | Whether there are more results available beyond this page. |
| `type` | `String` | Optional | The type of objects in the results array. |
| `request_id` | `String` | Optional | A unique identifier for this API request. |
| `additional_properties` | [`Hash[String, Object]`](../../doc/models/object.md) | Optional | - |

## Example

```ruby
paginated_list = PaginatedList.new(
  object: JSON.parse('"list"'),
  results: [
    { 'key1' => 'val1', 'key2' => 'val2' },
    { 'key1' => 'val1', 'key2' => 'val2' },
    { 'key1' => 'val1', 'key2' => 'val2' }
  ],
  next_cursor: 'next_cursor0',
  has_more: false,
  type: 'type6',
  request_id: 'request_id4',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

