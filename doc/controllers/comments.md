# Comments

Comments allow integrations to read and create comments on pages and blocks within Notion. Comments support rich text content and are associated with discussion threads.

Find out more here: [https://developers.notion.com/reference/comment-object](https://developers.notion.com/reference/comment-object)

```ruby
comments_api = client.comments
```

## Class Name

`CommentsApi`

## Methods

* [List Comments](../../doc/controllers/comments.md#list-comments)
* [Create Comment](../../doc/controllers/comments.md#create-comment)


# List Comments

Retrieves a list of unresolved comments from a page or block. Requires the integration to have read comment capabilities.

Find out more here: [https://developers.notion.com/reference/list-comments](https://developers.notion.com/reference/list-comments)

```ruby
def list_comments(notion_version,
                  block_id,
                  start_cursor: nil,
                  page_size: nil)
```

## Authentication

This endpoint requires [bearerAuth](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `notion_version` | `String` | Header, Required | The version of the Notion API to use. The current version is 2022-06-28. This header is required for all API requests. |
| `block_id` | `UUID \| String` | Query, Required | The ID of the block or page to retrieve comments for. |
| `start_cursor` | `String` | Query, Optional | Pagination cursor to continue fetching results. |
| `page_size` | `Integer` | Query, Optional | Maximum number of comments to return (max 100).<br><br>**Constraints**: `<= 100` |

## Response Type

**200**: Comments successfully retrieved.

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`PaginatedList`](../../doc/models/paginated-list.md).

## Example Usage

```ruby
notion_version = '2022-06-28'

block_id = '00000abc-0000-0000-0000-000000000000'

result = comments_api.list_comments(
  notion_version,
  block_id
)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | The bearer token is missing, invalid, or the integration lacks access. | [`ErrorException`](../../doc/models/error-exception.md) |
| 404 | The requested resource does not exist or the integration lacks access to it. | [`ErrorException`](../../doc/models/error-exception.md) |
| 429 | The request has been rate limited. Notion enforces rate limits of 3 requests per second for integrations. Retry after the specified delay. | [`ErrorException`](../../doc/models/error-exception.md) |


# Create Comment

Creates a comment on a page or in an existing discussion thread. The integration must have comment capabilities to use this endpoint.

Find out more here: [https://developers.notion.com/reference/create-a-comment](https://developers.notion.com/reference/create-a-comment)

```ruby
def create_comment(notion_version,
                   body)
```

## Authentication

This endpoint requires [bearerAuth](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `notion_version` | `String` | Header, Required | The version of the Notion API to use. The current version is 2022-06-28. This header is required for all API requests. |
| `body` | [`CommentsRequest`](../../doc/models/comments-request.md) | Body, Required | - |

## Response Type

**200**: Comment successfully created.

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`Comment`](../../doc/models/comment.md).

## Example Usage

```ruby
notion_version = '2022-06-28'

body = CommentsRequest.new(
  rich_text: [
    RichText.new(
      type: Type2::EQUATION,
      plain_text: 'plain_text4'
    )
  ]
)

result = comments_api.create_comment(
  notion_version,
  body
)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | The request was invalid or malformed. | [`ErrorException`](../../doc/models/error-exception.md) |
| 401 | The bearer token is missing, invalid, or the integration lacks access. | [`ErrorException`](../../doc/models/error-exception.md) |
| 404 | The requested resource does not exist or the integration lacks access to it. | [`ErrorException`](../../doc/models/error-exception.md) |
| 429 | The request has been rate limited. Notion enforces rate limits of 3 requests per second for integrations. Retry after the specified delay. | [`ErrorException`](../../doc/models/error-exception.md) |

