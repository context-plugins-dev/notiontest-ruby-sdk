
# Pages Request

*This model accepts additional fields of type [Object](../../doc/models/object.md).*

## Structure

`PagesRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `parent` | [`Parent`](../../doc/models/parent.md) | Required | A Parent object represents the parent of a page, database, or block. The parent can be a workspace, page, database, or block. |
| `properties` | [`Object`](../../doc/models/object.md) | Required | Property values for the new page. Keys are property names or IDs. If the parent is a database, the values must conform to the database schema. |
| `children` | [`Array[Block]`](../../doc/models/block.md) | Optional | Page content as an array of block objects. |
| `icon` | [Emoji](../../doc/models/emoji.md) \| [ExternalFile](../../doc/models/external-file.md) \| nil | Optional | This is a container for one-of cases. |
| `cover` | [`ExternalFile`](../../doc/models/external-file.md) | Optional | Page cover image as an external URL. |
| `additional_properties` | [`Hash[String, Object]`](../../doc/models/object.md) | Optional | - |

## Example

```ruby
pages_request = PagesRequest.new(
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
  properties: { 'key1' => 'val1', 'key2' => 'val2' },
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

