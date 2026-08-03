
# Database

A Database object represents a database in Notion. Databases are collections of pages that share a common schema of properties. The schema defines the columns and their types that all pages in the database will have.

*This model accepts additional fields of type [Object](../../doc/models/object.md).*

## Structure

`Database`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `object` | [`Object12`](../../doc/models/object-12.md) | Required | Always "database" for database objects. |
| `id` | `UUID \| String` | Required | Unique identifier for the database. |
| `created_time` | `DateTime` | Required | Date and time when the database was created (ISO 8601). |
| `last_edited_time` | `DateTime` | Required | Date and time when the database was last edited (ISO 8601). |
| `created_by` | [`PartialUser`](../../doc/models/partial-user.md) | Required | A partial User object containing only the object type and ID. Used in created_by and last_edited_by fields. |
| `last_edited_by` | [`PartialUser`](../../doc/models/partial-user.md) | Required | A partial User object containing only the object type and ID. Used in created_by and last_edited_by fields. |
| `title` | [`Array[RichText]`](../../doc/models/rich-text.md) | Required | Title of the database as rich text. |
| `description` | [`Array[RichText]`](../../doc/models/rich-text.md) | Required | Description of the database as rich text. |
| `icon` | [Emoji](../../doc/models/emoji.md) \| [File](../../doc/models/file.md) \| nil | Optional | This is a container for one-of cases. |
| `cover` | [`File`](../../doc/models/file.md) | Optional | Database cover image. |
| `properties` | [`Hash[String, PropertySchema]`](../../doc/models/property-schema.md) | Required | Schema of database properties. Keys are property names, values are property schema objects defining the type and configuration of each column. |
| `parent` | [`Parent`](../../doc/models/parent.md) | Required | A Parent object represents the parent of a page, database, or block. The parent can be a workspace, page, database, or block. |
| `url` | `String` | Required | The URL of the database in Notion. |
| `public_url` | `String` | Optional | The public URL of the database, if published to the web. Otherwise null. |
| `archived` | `TrueClass \| FalseClass` | Required | Whether the database has been archived. |
| `in_trash` | `TrueClass \| FalseClass` | Optional | Whether the database is in the trash. |
| `is_inline` | `TrueClass \| FalseClass` | Optional | Whether the database is inline (appears within its parent page rather than as a full page). |
| `additional_properties` | [`Hash[String, Object]`](../../doc/models/object.md) | Optional | - |

## Example

```ruby
database = Database.new(
  object: Object12::DATABASE,
  id: '0000092e-0000-0000-0000-000000000000',
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
  properties: {
    'key0' => PropertySchema.new(
      id: 'id2',
      name: 'name2',
      type: Type31::PEOPLE,
      additional_properties: {
        'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
      }
    ),
    'key1' => PropertySchema.new(
      id: 'id2',
      name: 'name2',
      type: Type31::PEOPLE,
      additional_properties: {
        'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
      }
    )
  },
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
  url: 'url4',
  archived: false,
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
  public_url: 'public_url8',
  in_trash: false,
  is_inline: false,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

