
# Filter

Filter conditions. Currently only supports filtering by object type (page or database).

*This model accepts additional fields of type [Object](../../doc/models/object.md).*

## Structure

`Filter`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `value` | [`Value`](../../doc/models/value.md) | Optional | The type of object to filter by. |
| `property` | [`Property`](../../doc/models/property.md) | Optional | Must be "object". |
| `additional_properties` | [`Hash[String, Object]`](../../doc/models/object.md) | Optional | - |

## Example

```ruby
filter = Filter.new(
  value: Value::PAGE,
  property: Property::OBJECT,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

