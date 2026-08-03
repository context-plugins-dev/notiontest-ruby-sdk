
# Property Schema

A Property Schema object defines a database property's configuration including its type and type-specific settings. Common property types include title, rich_text, number, select, multi_select, date, people, files, checkbox, url, email, phone_number, formula, relation, rollup, created_time, created_by, last_edited_time, last_edited_by, and status.

*This model accepts additional fields of type [Object](../../doc/models/object.md).*

## Structure

`PropertySchema`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | The ID of the property. |
| `name` | `String` | Optional | The name of the property. |
| `type` | [`Type31`](../../doc/models/type-31.md) | Optional | The type of property. |
| `additional_properties` | [`Hash[String, Object]`](../../doc/models/object.md) | Optional | - |

## Example

```ruby
property_schema = PropertySchema.new(
  id: 'id4',
  name: 'name4',
  type: Type31::MULTI_SELECT,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

