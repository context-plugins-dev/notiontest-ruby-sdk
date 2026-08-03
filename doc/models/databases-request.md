
# Databases Request

*This model accepts additional fields of type [Object](../../doc/models/object.md).*

## Structure

`DatabasesRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `parent` | [`Parent`](../../doc/models/parent.md) | Required | A Parent object represents the parent of a page, database, or block. The parent can be a workspace, page, database, or block. |
| `title` | [`Array[RichText]`](../../doc/models/rich-text.md) | Optional | Rich text array for the database title. |
| `description` | [`Array[RichText]`](../../doc/models/rich-text.md) | Optional | Rich text array for the database description. |
| `properties` | [`Hash[String, PropertySchema]`](../../doc/models/property-schema.md) | Required | Schema of the database properties. Keys are property names, values are property schema objects defining the type and configuration. |
| `is_inline` | `TrueClass \| FalseClass` | Optional | Whether the database appears inline within its parent page rather than as a full page. |
| `icon` | [Emoji](../../doc/models/emoji.md) \| [ExternalFile](../../doc/models/external-file.md) \| nil | Optional | This is a container for one-of cases. |
| `cover` | [`ExternalFile1`](../../doc/models/external-file-1.md) | Optional | Database cover image. |
| `additional_properties` | [`Hash[String, Object]`](../../doc/models/object.md) | Optional | - |

## Example

```ruby
databases_request = DatabasesRequest.new(
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
    ),
    'key2' => PropertySchema.new(
      id: 'id2',
      name: 'name2',
      type: Type31::PEOPLE,
      additional_properties: {
        'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
      }
    )
  },
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
    ),
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
  is_inline: false,
  icon: Emoji.new(
    type: Type3::EMOJI,
    emoji: 'emoji6',
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  cover: ExternalFile1.new(
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

