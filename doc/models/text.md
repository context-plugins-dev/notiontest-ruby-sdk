
# Text

Text content and optional link. Present when type is "text".

*This model accepts additional fields of type [Object](../../doc/models/object.md).*

## Structure

`Text`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `content` | `String` | Optional | The actual text content. |
| `link` | [`Link`](../../doc/models/link.md) | Optional | Optional link within the text. |
| `additional_properties` | [`Hash[String, Object]`](../../doc/models/object.md) | Optional | - |

## Example

```ruby
text = Text.new(
  content: 'content4',
  link: Link.new(
    url: 'url4',
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

