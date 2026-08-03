
# Equation

Equation content in KaTeX format. Present when type is "equation".

*This model accepts additional fields of type [Object](../../doc/models/object.md).*

## Structure

`Equation`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `expression` | `String` | Optional | The LaTeX equation expression. |
| `additional_properties` | [`Hash[String, Object]`](../../doc/models/object.md) | Optional | - |

## Example

```ruby
equation = Equation.new(
  expression: 'expression2',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

