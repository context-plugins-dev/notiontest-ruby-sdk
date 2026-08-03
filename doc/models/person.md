
# Person

Person-specific information. Only present when type is "person".

*This model accepts additional fields of type [Object](../../doc/models/object.md).*

## Structure

`Person`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `email` | `String` | Optional | Email address of the person. |
| `additional_properties` | [`Hash[String, Object]`](../../doc/models/object.md) | Optional | - |

## Example

```ruby
person = Person.new(
  email: 'email8',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

