
# Link

Optional link within the text., External file details. Present when type is "external"., Optional link within the text., External file details. Present when type is "external"., Optional link within the text.

*This model accepts additional fields of type [Object](../../doc/models/object.md).*

## Structure

`Link`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `url` | `String` | Optional | The URL the text links to. |
| `additional_properties` | [`Hash[String, Object]`](../../doc/models/object.md) | Optional | - |

## Example

```ruby
link = Link.new(
  url: 'url4',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

