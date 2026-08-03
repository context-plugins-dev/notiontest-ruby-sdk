
# Pages Request 1

*This model accepts additional fields of type [Object](../../doc/models/object.md).*

## Structure

`PagesRequest1`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `properties` | [`Object`](../../doc/models/object.md) | Optional | Property values to update. |
| `archived` | `TrueClass \| FalseClass` | Optional | Set to true to archive (trash) the page. |
| `icon` | [Emoji](../../doc/models/emoji.md) \| [ExternalFile](../../doc/models/external-file.md) \| nil | Optional | This is a container for one-of cases. |
| `cover` | [`ExternalFile`](../../doc/models/external-file.md) | Optional | Page cover image to set or remove. |
| `additional_properties` | [`Hash[String, Object]`](../../doc/models/object.md) | Optional | - |

## Example

```ruby
pages_request1 = PagesRequest1.new(
  properties: { 'key1' => 'val1', 'key2' => 'val2' },
  archived: false,
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

