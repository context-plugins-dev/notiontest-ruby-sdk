
# Databases Request Icon

## Data Type

`Emoji | ExternalFile`

## Cases

| Type |
|  --- |
| [`Emoji`](../../../doc/models/emoji.md) |
| [`ExternalFile`](../../../doc/models/external-file.md) |

## Emoji

### Initialization Code

#### Example

```ruby
value = Emoji.new(
  type: Type3::EMOJI,
  emoji: 'emoji6'
)
```

## ExternalFile

### Initialization Code

#### Example

```ruby
value = ExternalFile.new(
  type: Type5::EXTERNAL,
  external: External1.new(
    url: 'url2'
  )
)
```

