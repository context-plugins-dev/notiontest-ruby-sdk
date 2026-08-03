
# Owner

Information about the bot's owner.

*This model accepts additional fields of type [Object](../../doc/models/object.md).*

## Structure

`Owner`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `type` | [`Type12`](../../doc/models/type-12.md) | Optional | - |
| `workspace` | `TrueClass \| FalseClass` | Optional | Whether the bot is owned by the workspace. |
| `additional_properties` | [`Hash[String, Object]`](../../doc/models/object.md) | Optional | - |

## Example

```ruby
owner = Owner.new(
  type: Type12::WORKSPACE,
  workspace: false,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

