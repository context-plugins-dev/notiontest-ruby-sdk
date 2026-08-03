
# External File 1

Database cover image.

*This model accepts additional fields of type [Object](../../doc/models/object.md).*

## Structure

`ExternalFile1`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `type` | [`Type5`](../../doc/models/type-5.md) | Required | Always "external". |
| `external` | [`External1`](../../doc/models/external-1.md) | Required | - |
| `additional_properties` | [`Hash[String, Object]`](../../doc/models/object.md) | Optional | - |

## Example

```ruby
external_file1 = ExternalFile1.new(
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
)
```

