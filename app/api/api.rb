require 'grape-swagger'
require 'entities'
require 'helpers'
require 'formatters'
class API < Grape::API
  prefix 'rest'
  version 'v2', using: :path

  # Format相关
  content_type :json, "application/json;charset=utf-8"
  formatter :json, PageFormatter
  default_format :json

  mount Rest::Word

  add_swagger_documentation mount_path: "/api_doc", # base_path: 'http://localhost:8080',
  api_version: "v2",
  hide_documentation_path: true
end
