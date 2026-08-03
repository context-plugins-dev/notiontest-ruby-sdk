
# User

A User object represents a user in a Notion workspace. Users can be either people (human workspace members) or bots (API integrations). User objects include identifying information such as name, email, and avatar URL.

*This model accepts additional fields of type [Object](../../doc/models/object.md).*

## Structure

`User`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `object` | [`Object2`](../../doc/models/object-2.md) | Required | Always "user" for user objects. |
| `id` | `UUID \| String` | Required | Unique identifier for the user. |
| `type` | [`Type4`](../../doc/models/type-4.md) | Optional | The type of user. "person" for human workspace members, "bot" for API integrations. |
| `name` | `String` | Optional | Display name of the user. |
| `avatar_url` | `String` | Optional | URL of the user's avatar image. |
| `person` | [`Person`](../../doc/models/person.md) | Optional | Person-specific information. Only present when type is "person". |
| `bot` | [`Bot`](../../doc/models/bot.md) | Optional | Bot-specific information. Only present when type is "bot". |
| `additional_properties` | [`Hash[String, Object]`](../../doc/models/object.md) | Optional | - |

## Example

```ruby
user = User.new(
  object: Object2::USER,
  id: '0000143c-0000-0000-0000-000000000000',
  type: Type4::PERSON,
  name: 'name0',
  avatar_url: 'avatar_url6',
  person: Person.new(
    email: 'email8',
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  bot: Bot.new(
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
  ),
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

