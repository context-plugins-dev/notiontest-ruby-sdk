
# Client Class Documentation

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| connection | `Faraday::Connection` | The Faraday connection object passed by the SDK user for making requests |
| adapter | `Faraday::Adapter` | The Faraday adapter object passed by the SDK user for performing http requests |
| timeout | `Float` | The value to use for connection timeout. <br> **Default: 30** |
| max_retries | `Integer` | The number of times to retry an endpoint call if it fails. <br> **Default: 0** |
| retry_interval | `Float` | Pause in seconds between retries. <br> **Default: 1** |
| backoff_factor | `Float` | The amount to multiply each successive retry's interval amount by in order to provide backoff. <br> **Default: 2** |
| retry_statuses | `Array` | A list of HTTP statuses to retry. <br> **Default: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524, 408, 413, 429, 500, 502, 503, 504, 521, 522, 524]** |
| retry_methods | `Array` | A list of HTTP methods to retry. <br> **Default: %i[get put get put]** |
| http_callback | `HttpCallBack` | The Http CallBack allows defining callables for pre and post API calls. |
| proxy_settings | [`ProxySettings`](../doc/proxy-settings.md) | Optional proxy configuration to route HTTP requests through a proxy server. |
| logging_configuration | [`LoggingConfiguration`](../doc/logging-configuration.md) | The SDK logging configuration for API calls |
| bearer_auth_credentials | [`BearerAuthCredentials`](auth/oauth-2-bearer-token.md) | The credential object for OAuth 2 Bearer token |

The API client can be initialized as follows:

## Code-Based Client Initialization

```ruby
require 'notion_test'
include NotionTest

client = Client.new(
  bearer_auth_credentials: BearerAuthCredentials.new(
    access_token: 'AccessToken'
  ),
  logging_configuration: LoggingConfiguration.new(
    log_level: Logger::INFO,
    request_logging_config: RequestLoggingConfiguration.new(
      log_body: true
    ),
    response_logging_config: ResponseLoggingConfiguration.new(
      log_headers: true
    )
  )
)
```

## Environment-Based Client Initialization

```ruby
require 'notion_test'
include NotionTest

# Create client from environment
client = Client.from_env
```

See the [`Environment-Based Client Initialization`](../doc/environment-based-client-initialization.md) section for details.

## NotionTest Client

The gateway for the SDK. This class acts as a factory for the Apis and also holds the configuration of the SDK.

## Apis

| Name | Description |
|  --- | --- |
| blocks | Gets BlocksApi |
| comments | Gets CommentsApi |
| databases | Gets DatabasesApi |
| pages | Gets PagesApi |
| search | Gets SearchApi |
| users | Gets UsersApi |

