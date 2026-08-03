
# Getting Started with NotionTest

## Introduction

The Notion API allows developers to integrate with Notion workspaces programmatically. Build integrations that connect Notion with other tools, automate workflows, and manage workspace content including pages, databases, blocks, users, comments, and search. Notion is an all-in-one workspace that combines notes, tasks, wikis, and databases into a flexible, collaborative platform.

## Building

The generated code depends on a few Ruby gems. The references to these gems are added in the gemspec file. The easiest way to resolve the dependencies, build the gem and install it is through Rake:

1. Install Rake if not already installed: `gem install rake`
2. Install Bundler if not already installed: `gem install bundler`
3. From terminal/cmd navigate to the root directory of the SDK.
4. Invoke: `rake install`

Alternatively, you can build and install the gem manually:

1. From terminal/cmd navigate to the root directory of the SDK.
2. Run the build command: `gem build notion_test.gemspec`
3. Run the install command: `gem install notion_test-1.0.0.gem`

![Installing Gem](https://apidocs.io/illustration/ruby?workspaceFolder=NotionTest&gemVer=1.0.0&gemName=notion_test&step=buildSDK)

## Installation

The following section explains how to use the notion_test ruby gem in a new Rails project using RubyMine&trade;. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

### 1. Starting a new project

Close any existing projects in RubyMine&trade; by selecting `File -> Close Project`. Next, click on `Create New Project` to create a new project from scratch.

![Create a new project in RubyMine - Step 1](https://apidocs.io/illustration/ruby?workspaceFolder=NotionTest&step=createNewProject0)

Next, provide `TestApp` as the project name, choose `Rails Application` as the project type, and click `OK`.

![Create a new Rails Application in RubyMine - Step 2](https://apidocs.io/illustration/ruby?workspaceFolder=NotionTest&step=createNewProject1)

In the next dialog make sure that the correct Ruby SDK is being used (>= 2.6 and <= 3.2) and click `OK`.

![Create a new Rails Application in RubyMine - Step 3](https://apidocs.io/illustration/ruby?workspaceFolder=NotionTest&step=createNewProject2)

### 2. Add reference of the gem

In order to use the `notion_test` gem in the new project we must add a gem reference. Locate the `Gemfile` in the Project Explorer window under the `TestApp` project node. The file contains references to all gems being used in the project. Here, add the reference to the library gem by adding the following line: `gem 'notion_test', '1.0.0'`

![Add new reference to the Gemfile](https://apidocs.io/illustration/ruby?workspaceFolder=NotionTest&gemVer=1.0.0&gemName=notion_test&step=addReference)

### 3. Adding a new Rails Controller

Once the `TestApp` project is created, a folder named `controllers` will be visible in the *Project Explorer* under the following path: `TestApp > app > controllers`. Right click on this folder and select `New -> Run Rails Generator...`.

![Run Rails Generator on Controllers Folder](https://apidocs.io/illustration/ruby?workspaceFolder=NotionTest&gemVer=1.0.0&gemName=notion_test&step=addCode0)

Selecting the said option will popup a small window where the generator names are displayed. Here, select the `controller` template.

![Create a new Controller](https://apidocs.io/illustration/ruby?workspaceFolder=NotionTest&step=addCode1)

Next, a popup window will ask you for a Controller name and included Actions. For controller name provide `Hello` and include an action named `Index` and click `OK`.

![Add a new Controller](https://apidocs.io/illustration/ruby?workspaceFolder=NotionTest&gemVer=1.0.0&gemName=notion_test&step=addCode2)

A new controller class named `HelloController` will be created in a file named `hello_controller.rb` containing a method named `Index`.

1. Add the `require 'notion_test'` statement to require the gem in the controller file.
2. Add the `include NotionTest` statement to include the sdk module in the controller file.
3. In the `Index` method, add code for initialization and a sample for its usage.

![Initialize the library](https://apidocs.io/illustration/ruby?workspaceFolder=NotionTest&gemName=notion_test&step=addCode3)

## IRB Console Usage

You can explore the SDK interactively using IRB in two ways

### 1. Use IRB with Installed Gem

Open your system terminal (Command Prompt, Git Bash or macOS Terminal) and type the following command to start the irb console.

```bash
irb
```

Now you can load the SDK in the IRB

```ruby
require 'notion_test'
include NotionTest
```

### 2. Use IRB within SDK

Open your system terminal (Command Prompt, Git Bash or macOS Terminal) and navigate to the root folder of SDK.

```
cd path/to/notion_test
```

Now you can start the preconfigured irb console by running the following command

```bash
ruby bin/console
```

**_Note:_** This automatically loads the SDK from lib/

## Initialize the API Client

**_Note:_** Documentation for the client can be found [here.](doc/client.md)

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
| proxy_settings | [`ProxySettings`](doc/proxy-settings.md) | Optional proxy configuration to route HTTP requests through a proxy server. |
| logging_configuration | [`LoggingConfiguration`](doc/logging-configuration.md) | The SDK logging configuration for API calls |
| bearer_auth_credentials | [`BearerAuthCredentials`](doc/auth/oauth-2-bearer-token.md) | The credential object for OAuth 2 Bearer token |

The API client can be initialized as follows:

### Code-Based Client Initialization

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

### Environment-Based Client Initialization

```ruby
require 'notion_test'
include NotionTest

# Create client from environment
client = Client.from_env
```

See the [`Environment-Based Client Initialization`](doc/environment-based-client-initialization.md) section for details.

## Authorization

This API uses the following authentication schemes.

* [`bearerAuth (OAuth 2 Bearer token)`](doc/auth/oauth-2-bearer-token.md)

## List of APIs

* [Blocks](doc/controllers/blocks.md)
* [Comments](doc/controllers/comments.md)
* [Databases](doc/controllers/databases.md)
* [Pages](doc/controllers/pages.md)
* [Search](doc/controllers/search.md)
* [Users](doc/controllers/users.md)

## SDK Infrastructure

### Configuration

* [ProxySettings](doc/proxy-settings.md)
* [Environment-Based Client Initialization](doc/environment-based-client-initialization.md)
* [AbstractLogger](doc/abstract-logger.md)
* [LoggingConfiguration](doc/logging-configuration.md)
* [RequestLoggingConfiguration](doc/request-logging-configuration.md)
* [ResponseLoggingConfiguration](doc/response-logging-configuration.md)

### HTTP

* [HttpResponse](doc/http-response.md)
* [HttpRequest](doc/http-request.md)

### Utilities

* [ApiResponse](doc/api-response.md)
* [ApiHelper](doc/api-helper.md)
* [DateTimeHelper](doc/date-time-helper.md)

