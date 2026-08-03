
# Sort

*This model accepts additional fields of type [Object](../../doc/models/object.md).*

## Structure

`Sort`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `property` | `String` | Optional | The name of the property to sort by. |
| `timestamp` | [`Timestamp`](../../doc/models/timestamp.md) | Optional | The timestamp to sort by. Possible values are created_time or last_edited_time. |
| `direction` | [`Direction`](../../doc/models/direction.md) | Optional | The sort direction. |
| `additional_properties` | [`Hash[String, Object]`](../../doc/models/object.md) | Optional | - |

## Example

```ruby
sort = Sort.new(
  property: 'property0',
  timestamp: Timestamp::CREATED_TIME,
  direction: Direction::ASCENDING,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

