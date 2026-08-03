
# Page

A Page object represents a page in a Notion workspace. Pages can exist as standalone pages in a workspace or as items within a database. Each page has properties, which are metadata fields defined by its parent database schema or by the page itself.

*This model accepts additional fields of type [Object](../../doc/models/object.md).*

## Structure

`Page`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `object` | [`Object21`](../../doc/models/object-21.md) | Required | Always "page" for page objects. |
| `id` | `UUID \| String` | Required | Unique identifier for the page. |
| `created_time` | `DateTime` | Required | Date and time when the page was created (ISO 8601). |
| `last_edited_time` | `DateTime` | Required | Date and time when the page was last edited (ISO 8601). |
| `created_by` | [`PartialUser`](../../doc/models/partial-user.md) | Required | A partial User object containing only the object type and ID. Used in created_by and last_edited_by fields. |
| `last_edited_by` | [`PartialUser`](../../doc/models/partial-user.md) | Required | A partial User object containing only the object type and ID. Used in created_by and last_edited_by fields. |
| `archived` | `TrueClass \| FalseClass` | Required | Whether the page has been archived (trashed). |
| `in_trash` | `TrueClass \| FalseClass` | Optional | Whether the page is in the trash. |
| `icon` | [Emoji](../../doc/models/emoji.md) \| [File](../../doc/models/file.md) \| nil | Optional | This is a container for one-of cases. |
| `cover` | [`File`](../../doc/models/file.md) | Optional | Page cover image. |
| `properties` | [`Object`](../../doc/models/object.md) | Required | Property values of the page. Keys are property names or IDs. |
| `parent` | [`Parent`](../../doc/models/parent.md) | Required | A Parent object represents the parent of a page, database, or block. The parent can be a workspace, page, database, or block. |
| `url` | `String` | Required | The URL of the page in Notion. |
| `public_url` | `String` | Optional | The public URL of the page, if the page has been published to the web. Otherwise null. |
| `additional_properties` | [`Hash[String, Object]`](../../doc/models/object.md) | Optional | - |

## Example

```ruby
page = Page.new(
  object: Object21::PAGE,
  id: '0000202e-0000-0000-0000-000000000000',
  created_time: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  last_edited_time: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
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
  properties: { 'key1' => 'val1', 'key2' => 'val2' },
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
  url: 'url2',
  in_trash: false,
  icon: Emoji.new(
    type: Type3::EMOJI,
    emoji: 'emoji6',
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  cover: File.new(
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
    name: 'name6',
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
  ),
  public_url: 'public_url0',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

