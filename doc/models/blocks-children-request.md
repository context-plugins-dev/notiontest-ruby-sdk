
# Blocks Children Request

*This model accepts additional fields of type [Object](../../doc/models/object.md).*

## Structure

`BlocksChildrenRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `children` | [`Array[Block]`](../../doc/models/block.md) | Required | Array of block objects to append as children. Maximum 100 blocks per request.<br><br>**Constraints**: *Maximum Items*: `100` |
| `after` | `UUID \| String` | Optional | The ID of an existing block to insert the new children after. If omitted, blocks are appended to the end. |
| `additional_properties` | [`Hash[String, Object]`](../../doc/models/object.md) | Optional | - |

## Example

```ruby
blocks_children_request = BlocksChildrenRequest.new(
  children: [
    Block.new(
      object: Object1::BLOCK,
      id: '000003b4-0000-0000-0000-000000000000',
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
  ],
  after: '00000802-0000-0000-0000-000000000000',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

