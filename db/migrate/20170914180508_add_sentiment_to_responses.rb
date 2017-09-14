require "google/cloud/language"

class Response < ActiveRecord::Base
end

language_client = Google::Cloud::Language.new(project: ENV["GOOGLE_CLOUD_PROJECT_ID"])

class AddSentimentToResponses < ActiveRecord::Migration[5.0]
  def change
    add_column :responses, :sentiment, :decimal

    Response.all.each do |response|
      sentiment = language_client.document(response.body).sentiment.score

      response.update(
        sentiment: sentiment
      )
    end

    change_column :responses, :sentiment, :decimal, null: false
  end
end
