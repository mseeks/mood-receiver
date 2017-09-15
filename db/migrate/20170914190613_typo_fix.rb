require "google/cloud/language"

class Response < ActiveRecord::Base
end

class TypoFix < ActiveRecord::Migration[5.0]
  def change
    language_client = Google::Cloud::Language.new(project: ENV["GOOGLE_CLOUD_PROJECT_ID"])
    sentiment = language_client.document("nervous").sentiment.score
    Response.where(body: "nervouis").update(body: "nervous", sentiment: sentiment)
  end
end
