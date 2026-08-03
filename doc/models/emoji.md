
# Emoji

An emoji icon object.

*This model accepts additional fields of type [Object](../../doc/models/object.md).*

## Structure

`Emoji`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `type` | [`Type3`](../../doc/models/type-3.md) | Required | Always "emoji". |
| `emoji` | `String` | Required | The emoji character. |
| `additional_properties` | [`Hash[String, Object]`](../../doc/models/object.md) | Optional | - |

## Example

```ruby
emoji = Emoji.new(
  type: Type3::EMOJI,
  emoji: 'emoji4',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

