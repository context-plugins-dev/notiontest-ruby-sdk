
# Annotations

Styling annotations applied to the text.

*This model accepts additional fields of type [Object](../../doc/models/object.md).*

## Structure

`Annotations`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `bold` | `TrueClass \| FalseClass` | Optional | Whether the text is bold. |
| `italic` | `TrueClass \| FalseClass` | Optional | Whether the text is italic. |
| `strikethrough` | `TrueClass \| FalseClass` | Optional | Whether the text has a strikethrough. |
| `underline` | `TrueClass \| FalseClass` | Optional | Whether the text is underlined. |
| `code` | `TrueClass \| FalseClass` | Optional | Whether the text is formatted as inline code. |
| `color` | `String` | Optional | The color of the text. Possible values include default, gray, brown, orange, yellow, green, blue, purple, pink, red, and their background variants (e.g., gray_background). |
| `additional_properties` | [`Hash[String, Object]`](../../doc/models/object.md) | Optional | - |

## Example

```ruby
annotations = Annotations.new(
  bold: false,
  italic: false,
  strikethrough: false,
  underline: false,
  code: false,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

