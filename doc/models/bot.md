
# Bot

Bot-specific information. Only present when type is "bot".

*This model accepts additional fields of type [Object](../../doc/models/object.md).*

## Structure

`Bot`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `owner` | [`Owner`](../../doc/models/owner.md) | Optional | Information about the bot's owner. |
| `workspace_name` | `String` | Optional | The name of the workspace the bot belongs to. |
| `additional_properties` | [`Hash[String, Object]`](../../doc/models/object.md) | Optional | - |

## Example

```ruby
bot = Bot.new(
  owner: Owner.new(
    type: Type12::WORKSPACE,
    workspace: false,
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  workspace_name: 'workspace_name6',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

