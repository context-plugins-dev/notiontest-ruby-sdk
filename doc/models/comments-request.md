
# Comments Request

*This model accepts additional fields of type [Object](../../doc/models/object.md).*

## Structure

`CommentsRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `parent` | [`Parent11`](../../doc/models/parent-11.md) | Optional | The parent page to create the comment on. Required if discussion_id is not provided. |
| `discussion_id` | `UUID \| String` | Optional | The ID of an existing discussion thread to add the comment to. Required if parent is not provided. |
| `rich_text` | [`Array[RichText]`](../../doc/models/rich-text.md) | Required | Rich text content of the comment. |
| `additional_properties` | [`Hash[String, Object]`](../../doc/models/object.md) | Optional | - |

## Example

```ruby
comments_request = CommentsRequest.new(
  rich_text: [
    RichText.new(
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
  ],
  parent: Parent11.new(
    page_id: '00001234-0000-0000-0000-000000000000',
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  discussion_id: '00001204-0000-0000-0000-000000000000',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

