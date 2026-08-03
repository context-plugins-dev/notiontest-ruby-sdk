
# Databases Request 1

*This model accepts additional fields of type [Object](../../doc/models/object.md).*

## Structure

`DatabasesRequest1`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `title` | [`Array[RichText]`](../../doc/models/rich-text.md) | Optional | Updated database title as rich text. |
| `description` | [`Array[RichText]`](../../doc/models/rich-text.md) | Optional | Updated database description as rich text. |
| `properties` | [`Object`](../../doc/models/object.md) | Optional | Updated property schema. Include only properties to add or modify. Set a property value to null to remove it. |
| `icon` | [Emoji](../../doc/models/emoji.md) \| [ExternalFile](../../doc/models/external-file.md) \| nil | Optional | This is a container for one-of cases. |
| `cover` | [`ExternalFile`](../../doc/models/external-file.md) | Optional | Updated database cover image. |
| `is_inline` | `TrueClass \| FalseClass` | Optional | Whether the database is inline. |
| `additional_properties` | [`Hash[String, Object]`](../../doc/models/object.md) | Optional | - |

## Example

```ruby
databases_request1 = DatabasesRequest1.new(
  title: [
    RichText.new(
      type: Type2::EQUATION,
      plain_text: 'plain_text6',
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
      href: 'href6',
      additional_properties: {
        'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
      }
    ),
    RichText.new(
      type: Type2::EQUATION,
      plain_text: 'plain_text6',
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
      href: 'href6',
      additional_properties: {
        'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
      }
    )
  ],
  description: [
    RichText.new(
      type: Type2::TEXT,
      plain_text: 'plain_text2',
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
      href: 'href2',
      additional_properties: {
        'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
      }
    )
  ],
  properties: { 'key1' => 'val1', 'key2' => 'val2' },
  icon: Emoji.new(
    type: Type3::EMOJI,
    emoji: 'emoji6',
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  cover: ExternalFile.new(
    type: Type5::EXTERNAL,
    external: External1.new(
      url: 'url2',
      additional_properties: {
        'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
      }
    ),
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

