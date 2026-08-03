
# Blocks Request

Block type-specific content to update. Include the block type key with the fields to modify.

*This model accepts additional fields of type [Object](../../doc/models/object.md).*

## Structure

`BlocksRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `archived` | `TrueClass \| FalseClass` | Optional | Set to true to archive the block. |
| `additional_properties` | [`Hash[String, Object]`](../../doc/models/object.md) | Optional | - |

## Example

```ruby
blocks_request = BlocksRequest.new(
  archived: false,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

