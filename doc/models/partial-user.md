
# Partial User

A partial User object containing only the object type and ID. Used in created_by and last_edited_by fields.

*This model accepts additional fields of type [Object](../../doc/models/object.md).*

## Structure

`PartialUser`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `object` | [`Object2`](../../doc/models/object-2.md) | Required | Always "user". |
| `id` | `UUID \| String` | Required | Unique identifier for the user. |
| `additional_properties` | [`Hash[String, Object]`](../../doc/models/object.md) | Optional | - |

## Example

```ruby
partial_user = PartialUser.new(
  object: Object2::USER,
  id: '00000094-0000-0000-0000-000000000000',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

