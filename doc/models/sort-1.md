
# Sort 1

Sort conditions for the results.

*This model accepts additional fields of type [Object](../../doc/models/object.md).*

## Structure

`Sort1`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `direction` | [`Direction`](../../doc/models/direction.md) | Optional | The sort direction. |
| `timestamp` | [`Timestamp1`](../../doc/models/timestamp-1.md) | Optional | The timestamp to sort by. |
| `additional_properties` | [`Hash[String, Object]`](../../doc/models/object.md) | Optional | - |

## Example

```ruby
sort1 = Sort1.new(
  direction: Direction::ASCENDING,
  timestamp: Timestamp1::LAST_EDITED_TIME,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

