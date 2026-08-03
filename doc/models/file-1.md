
# File 1

Notion-hosted file details. Present when type is "file". These URLs expire after one hour.

*This model accepts additional fields of type [Object](../../doc/models/object.md).*

## Structure

`File1`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `url` | `String` | Optional | The authenticated S3 URL for the file. |
| `expiry_time` | `DateTime` | Optional | The expiration time of the URL. |
| `additional_properties` | [`Hash[String, Object]`](../../doc/models/object.md) | Optional | - |

## Example

```ruby
file1 = File1.new(
  url: 'url4',
  expiry_time: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

