require "active_record"
require "google/cloud/language"
require "pg"
require "sinatra"

language_client = Google::Cloud::Language.new(project: ENV["GOOGLE_CLOUD_PROJECT_ID"])

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
  word = params["Body"].downcase
  sentiment = language_client.document(word).sentiment.score

  Response.create(
    body: word,
    sentiment: sentiment
  )

  return 200
end
