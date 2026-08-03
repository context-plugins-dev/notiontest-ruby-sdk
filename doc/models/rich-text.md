
# Rich Text

A Rich Text object represents styled text content in Notion. Rich text can include annotations like bold, italic, and color, as well as links and mentions of other Notion objects.

*This model accepts additional fields of type [Object](../../doc/models/object.md).*

## Structure

`RichText`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `type` | [`Type2`](../../doc/models/type-2.md) | Required | The type of this rich text object. |
| `text` | [`Text`](../../doc/models/text.md) | Optional | Text content and optional link. Present when type is "text". |
| `mention` | [`Object`](../../doc/models/object.md) | Optional | Mention content. Present when type is "mention". Can reference users, pages, databases, dates, or link previews. |
| `equation` | [`Equation`](../../doc/models/equation.md) | Optional | Equation content in KaTeX format. Present when type is "equation". |
| `annotations` | [`Annotations`](../../doc/models/annotations.md) | Optional | Styling annotations applied to the text. |
| `plain_text` | `String` | Required | The plain text content without annotations. |
| `href` | `String` | Optional | The URL of any link in the text, or null. |
| `additional_properties` | [`Hash[String, Object]`](../../doc/models/object.md) | Optional | - |

## Example

```ruby
rich_text = RichText.new(
  type: Type2::EQUATION,
  plain_text: 'plain_text4',
  text: Text.new(
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
  ),
  mention: { 'key1' => 'val1', 'key2' => 'val2' },
  equation: Equation.new(
    expression: 'expression2',
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  annotations: Annotations.new(
    bold: false,
    italic: false,
    strikethrough: false,
    underline: false,
    code: false,
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  href: 'href4',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

