# Search

Search allows querying across all pages and databases that the integration has access to. Results can be filtered by object type and sorted by relevance or last edited time.

Find out more here: [https://developers.notion.com/reference/post-search](https://developers.notion.com/reference/post-search)

```ruby
search_api = client.search
```

## Class Name

`SearchApi`


# Search

Searches all parent or child pages and databases that have been shared with an integration. Returns results based on the query, filter, and sort parameters. Results are sorted by relevance by default but can be sorted by last_edited_time. The search indexing may not be immediate, so recently created or updated objects may not appear right away.

Find out more here: [https://developers.notion.com/reference/post-search](https://developers.notion.com/reference/post-search)

```ruby
def search(notion_version,
           body: nil)
```

## Authentication

This endpoint requires [bearerAuth](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `notion_version` | `String` | Header, Required | The version of the Notion API to use. The current version is 2022-06-28. This header is required for all API requests. |
| `body` | [`SearchRequest`](../../doc/models/search-request.md) | Body, Optional | - |

## Response Type

**200**: Search results successfully returned.

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`PaginatedList`](../../doc/models/paginated-list.md).

## Example Usage

```ruby
notion_version = '2022-06-28'

body = SearchRequest.new(
  page_size: 100
)

result = search_api.search(
  notion_version,
  body: body
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
| 429 | The request has been rate limited. Notion enforces rate limits of 3 requests per second for integrations. Retry after the specified delay. | [`ErrorException`](../../doc/models/error-exception.md) |

