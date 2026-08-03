
# Parent 11

The parent page to create the comment on. Required if discussion_id is not provided.

*This model accepts additional fields of type [Object](../../doc/models/object.md).*

## Structure

`Parent11`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `page_id` | `UUID \| String` | Optional | The ID of the parent page. |
| `additional_properties` | [`Hash[String, Object]`](../../doc/models/object.md) | Optional | - |

## Example

```ruby
parent11 = Parent11.new(
  page_id: '00001f2e-0000-0000-0000-000000000000',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

