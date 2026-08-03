
# File

A File object represents a file in Notion. Files can be either hosted by Notion (type "file") or externally hosted (type "external").

*This model accepts additional fields of type [Object](../../doc/models/object.md).*

## Structure

`File`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `type` | [`Type21`](../../doc/models/type-21.md) | Required | The type of file hosting. |
| `file` | [`File1`](../../doc/models/file-1.md) | Optional | Notion-hosted file details. Present when type is "file". These URLs expire after one hour. |
| `external` | [`Link`](../../doc/models/link.md) | Optional | External file details. Present when type is "external". |
| `name` | `String` | Optional | The name of the file. |
| `caption` | [`Array[RichText]`](../../doc/models/rich-text.md) | Optional | Caption for the file as rich text. |
| `additional_properties` | [`Hash[String, Object]`](../../doc/models/object.md) | Optional | - |

## Example

```ruby
file = File.new(
  type: Type21::FILE,
  file: File1.new(
    url: 'url4',
    expiry_time: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  external: Link.new(
    url: 'url2',
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  name: 'name0',
  caption: [
    RichText.new(
      type: Type2::TEXT,
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
      type: Type2::TEXT,
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
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

