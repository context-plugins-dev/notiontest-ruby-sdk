
# Block

A Block object represents a piece of content within a Notion page. Blocks are the building blocks of all page content and can be of many types including paragraphs, headings, lists, images, code, tables, and more. Blocks can contain other blocks as children, forming a tree structure.

*This model accepts additional fields of type [Object](../../doc/models/object.md).*

## Structure

`Block`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `object` | [`Object1`](../../doc/models/object-1.md) | Required | Always "block" for block objects. |
| `id` | `UUID \| String` | Required | Unique identifier for the block. |
| `parent` | [`Parent`](../../doc/models/parent.md) | Optional | A Parent object represents the parent of a page, database, or block. The parent can be a workspace, page, database, or block. |
| `type` | [`Type1`](../../doc/models/type-1.md) | Required | The type of block. Determines which type-specific content field is present. Common types include paragraph, heading_1, heading_2, heading_3, bulleted_list_item, numbered_list_item, to_do, toggle, code, image, divider, table, and many more. |
| `created_time` | `DateTime` | Required | Date and time when the block was created (ISO 8601). |
| `last_edited_time` | `DateTime` | Required | Date and time when the block was last edited (ISO 8601). |
| `created_by` | [`PartialUser`](../../doc/models/partial-user.md) | Optional | A partial User object containing only the object type and ID. Used in created_by and last_edited_by fields. |
| `last_edited_by` | [`PartialUser`](../../doc/models/partial-user.md) | Optional | A partial User object containing only the object type and ID. Used in created_by and last_edited_by fields. |
| `archived` | `TrueClass \| FalseClass` | Optional | Whether the block has been archived. |
| `in_trash` | `TrueClass \| FalseClass` | Optional | Whether the block is in the trash. |
| `has_children` | `TrueClass \| FalseClass` | Required | Whether the block has child blocks nested within it. |
| `additional_properties` | [`Hash[String, Object]`](../../doc/models/object.md) | Optional | - |

## Example

```ruby
block = Block.new(
  object: Object1::BLOCK,
  id: '00001d58-0000-0000-0000-000000000000',
  type: Type1::TO_DO,
  created_time: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  last_edited_time: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  has_children: false,
  parent: Parent.new(
    type: Type::BLOCK_ID,
    database_id: '000015f2-0000-0000-0000-000000000000',
    page_id: '00001234-0000-0000-0000-000000000000',
    block_id: '00001a0c-0000-0000-0000-000000000000',
    workspace: false,
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  created_by: PartialUser.new(
    object: Object2::USER,
    id: '00001f9c-0000-0000-0000-000000000000',
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  last_edited_by: PartialUser.new(
    object: Object2::USER,
    id: '000022e4-0000-0000-0000-000000000000',
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  archived: false,
  in_trash: false,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

