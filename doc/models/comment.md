
# Comment

A Comment object represents a comment on a Notion page or block. Comments contain rich text content and are associated with discussion threads.

*This model accepts additional fields of type [Object](../../doc/models/object.md).*

## Structure

`Comment`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `object` | [`Object11`](../../doc/models/object-11.md) | Required | Always "comment" for comment objects. |
| `id` | `UUID \| String` | Required | Unique identifier for the comment. |
| `parent` | [`Parent1`](../../doc/models/parent-1.md) | Required | The parent page or block the comment belongs to. |
| `discussion_id` | `UUID \| String` | Required | The ID of the discussion thread the comment belongs to. |
| `created_time` | `DateTime` | Required | Date and time when the comment was created (ISO 8601). |
| `last_edited_time` | `DateTime` | Required | Date and time when the comment was last edited (ISO 8601). |
| `created_by` | [`PartialUser`](../../doc/models/partial-user.md) | Required | A partial User object containing only the object type and ID. Used in created_by and last_edited_by fields. |
| `rich_text` | [`Array[RichText]`](../../doc/models/rich-text.md) | Required | Rich text content of the comment. |
| `additional_properties` | [`Hash[String, Object]`](../../doc/models/object.md) | Optional | - |

## Example

```ruby
comment = Comment.new(
  object: Object11::COMMENT,
  id: '00002144-0000-0000-0000-000000000000',
  parent: Parent1.new(
    type: Type11::PAGE_ID,
    page_id: '00001234-0000-0000-0000-000000000000',
    block_id: '00001a0c-0000-0000-0000-000000000000',
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  discussion_id: '0000150e-0000-0000-0000-000000000000',
  created_time: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  last_edited_time: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  created_by: PartialUser.new(
    object: Object2::USER,
    id: '00001f9c-0000-0000-0000-000000000000',
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
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
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

