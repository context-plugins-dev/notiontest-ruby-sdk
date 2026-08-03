Gem::Specification.new do |s|
  s.name = 'notion_test'
  s.version = '1.0.0'
  s.summary = 'notion_test'
  s.description = 'The Notion API allows developers to integrate with Notion workspaces programmatically. Build integrations that connect Notion with other tools, automate workflows, and manage workspace content including pages, databases, blocks, users, comments, and search. Notion is an all-in-one workspace that combines notes, tasks, wikis, and databases into a flexible, collaborative platform.'
  s.authors = ['Notion Labs Inc.']
  s.email = ['developers@makenotion.com']
  s.homepage = 'https://developers.notion.com'
  s.licenses = ['MIT']
  s.add_dependency('apimatic_core_interfaces', '~> 0.2.3')
  s.add_dependency('apimatic_core', '~> 0.3.20')
  s.add_dependency('apimatic_faraday_client_adapter', '~> 0.1.6')
  s.required_ruby_version = ['>= 2.6']
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
