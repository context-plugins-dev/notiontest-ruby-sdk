
# Parent 1

The parent page or block the comment belongs to.

*This model accepts additional fields of type [Object](../../doc/models/object.md).*

## Structure

`Parent1`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `type` | [`Type11`](../../doc/models/type-11.md) | Optional | - |
| `page_id` | `UUID \| String` | Optional | - |
| `block_id` | `UUID \| String` | Optional | - |
| `additional_properties` | [`Hash[String, Object]`](../../doc/models/object.md) | Optional | - |

## Example

```ruby
parent1 = Parent1.new(
  type: Type11::PAGE_ID,
  page_id: '0000127c-0000-0000-0000-000000000000',
  block_id: '00001a54-0000-0000-0000-000000000000',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

