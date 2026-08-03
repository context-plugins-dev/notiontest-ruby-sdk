# Pages

Pages represent documents in Notion workspaces. They can exist as standalone pages or as entries within a database. Pages contain properties (metadata) and content composed of blocks. Use these endpoints to create, retrieve, update, archive, and manage page properties and content.

Find out more here: [https://developers.notion.com/reference/page](https://developers.notion.com/reference/page)

```ruby
pages_api = client.pages
```

## Class Name

`PagesApi`

## Methods

* [Create Page](../../doc/controllers/pages.md#create-page)
* [Retrieve Page](../../doc/controllers/pages.md#retrieve-page)
* [Update Page](../../doc/controllers/pages.md#update-page)
* [Retrieve Page Property](../../doc/controllers/pages.md#retrieve-page-property)


# Create Page

Creates a new page that is a child of an existing page or database. If the parent is a database, the property values of the new page must conform to the parent database's schema. The request body must include a parent and properties. Page content can optionally be provided as an array of block objects in the children field.

Find out more here: [https://developers.notion.com/reference/post-page](https://developers.notion.com/reference/post-page)

```ruby
def create_page(notion_version,
                body)
```

## Authentication

This endpoint requires [bearerAuth](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `notion_version` | `String` | Header, Required | The version of the Notion API to use. The current version is 2022-06-28. This header is required for all API requests. |
| `body` | [`PagesRequest`](../../doc/models/pages-request.md) | Body, Required | - |

## Response Type

**200**: Page successfully created.

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`Page`](../../doc/models/page.md).

## Example Usage

```ruby
notion_version = '2022-06-28'

body = PagesRequest.new(
  parent: Parent.new(
    type: Type::BLOCK_ID
  ),
  properties: { 'key1' => 'val1', 'key2' => 'val2' }
)

result = pages_api.create_page(
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


# Retrieve Page

Retrieves a Page object using the ID specified in the path. Returns page properties but not page content (blocks). To retrieve page content, use the retrieve block children endpoint on the page ID.

Find out more here: [https://developers.notion.com/reference/retrieve-a-page](https://developers.notion.com/reference/retrieve-a-page)

```ruby
def retrieve_page(notion_version,
                  page_id,
                  filter_properties: nil)
```

## Authentication

This endpoint requires [bearerAuth](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `notion_version` | `String` | Header, Required | The version of the Notion API to use. The current version is 2022-06-28. This header is required for all API requests. |
| `page_id` | `UUID \| String` | Template, Required | The ID of the page to retrieve. |
| `filter_properties` | `Array[String]` | Query, Optional | A list of page property value IDs to include in the response. If provided, only the specified properties will be returned. |

## Response Type

**200**: Page successfully retrieved.

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`Page`](../../doc/models/page.md).

## Example Usage

```ruby
notion_version = '2022-06-28'

page_id = '000002e4-0000-0000-0000-000000000000'

result = pages_api.retrieve_page(
  notion_version,
  page_id
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


# Update Page

Updates the properties of a page. Only the properties specified in the request body will be updated. Properties that are not included will remain unchanged. Can also update the page icon, cover, and archived status.

Find out more here: [https://developers.notion.com/reference/patch-page](https://developers.notion.com/reference/patch-page)

```ruby
def update_page(notion_version,
                page_id,
                body)
```

## Authentication

This endpoint requires [bearerAuth](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `notion_version` | `String` | Header, Required | The version of the Notion API to use. The current version is 2022-06-28. This header is required for all API requests. |
| `page_id` | `UUID \| String` | Template, Required | The ID of the page to update. |
| `body` | [`PagesRequest1`](../../doc/models/pages-request-1.md) | Body, Required | - |

## Response Type

**200**: Page successfully updated.

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`Page`](../../doc/models/page.md).

## Example Usage

```ruby
notion_version = '2022-06-28'

page_id = '000002e4-0000-0000-0000-000000000000'

body = PagesRequest1.new

result = pages_api.update_page(
  notion_version,
  page_id,
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


# Retrieve Page Property

Retrieves a property item from a page. For paginated properties like rich text, relation, rollup, and people, this endpoint returns a paginated list. For all other property types, it returns a single property item.

Find out more here: [https://developers.notion.com/reference/retrieve-a-page-property](https://developers.notion.com/reference/retrieve-a-page-property)

```ruby
def retrieve_page_property(notion_version,
                           page_id,
                           property_id,
                           start_cursor: nil,
                           page_size: nil)
```

## Authentication

This endpoint requires [bearerAuth](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `notion_version` | `String` | Header, Required | The version of the Notion API to use. The current version is 2022-06-28. This header is required for all API requests. |
| `page_id` | `UUID \| String` | Template, Required | The ID of the page. |
| `property_id` | `String` | Template, Required | The ID of the property to retrieve. |
| `start_cursor` | `String` | Query, Optional | Pagination cursor for paginated property types. If supplied, returns results starting after the cursor. |
| `page_size` | `Integer` | Query, Optional | Maximum number of property items to return (max 100).<br><br>**Constraints**: `<= 100` |

## Response Type

**200**: Property item successfully retrieved.

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type `Object`.

## Example Usage

```ruby
notion_version = '2022-06-28'

page_id = '000002e4-0000-0000-0000-000000000000'

property_id = 'property_id0'

result = pages_api.retrieve_page_property(
  notion_version,
  page_id,
  property_id
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

