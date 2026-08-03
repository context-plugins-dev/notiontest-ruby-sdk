
# External 1

*This model accepts additional fields of type [Object](../../doc/models/object.md).*

## Structure

`External1`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `url` | `String` | Required | The URL of the external file. |
| `additional_properties` | [`Hash[String, Object]`](../../doc/models/object.md) | Optional | - |

## Example

```ruby
external1 = External1.new(
  url: 'url0',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

