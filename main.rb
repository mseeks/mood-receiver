require "active_record"
require "pg"
require "sinatra"

db_config = {
  host:     ENV["DB_HOST"],
  adapter:  "postgresql",
  encoding: "utf-8",
  database: ENV["DB_NAME"],
  username: ENV["DB_USERNAME"],
  password: ENV["DB_PASSWORD"]
}
ActiveRecord::Base.establish_connection(db_config)

class Response < ActiveRecord::Base
end

set :bind, "0.0.0.0"
set :port, 80

post "/" do
  Response.create(
    body: params["Body"].downcase
  )

  return 200
end
