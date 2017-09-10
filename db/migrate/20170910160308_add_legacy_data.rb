class Response < ActiveRecord::Base
end

class AddLegacyData < ActiveRecord::Migration[5.0]
  def change
    Response.create(body: "optimistic", created_at: "Fri, 18 Aug 2017 10:06:47 -0500")
    Response.create(body: "calm", created_at: "Thu, 17 Aug 2017 09:07:22 -0500")
    Response.create(body: "accomplished", created_at: "Wed, 16 Aug 2017 17:00:55 -0500")
    Response.create(body: "happy", created_at: "Thu, 17 Aug 2017 19:32:36 -0500")
    Response.create(body: "anxious", created_at: "Thu, 17 Aug 2017 13:08:39 -0500")
    Response.create(body: "satisfied", created_at: "Fri, 18 Aug 2017 19:47:06 -0500")
    Response.create(body: "alleviated", created_at: "Tue, 22 Aug 2017 09:00:55 -0500")
    Response.create(body: "energetic", created_at: "Mon, 21 Aug 2017 17:12:11 -0500")
    Response.create(body: "frustrated", created_at: "Mon, 21 Aug 2017 13:01:39 -0500")
    Response.create(body: "anxious", created_at: "Mon, 21 Aug 2017 09:17:26 -0500")
    Response.create(body: "sick", created_at: "Wed, 23 Aug 2017 13:00:42 -0500")
    Response.create(body: "distant", created_at: "Wed, 23 Aug 2017 09:01:23 -0500")
    Response.create(body: "cathartic", created_at: "Tue, 22 Aug 2017 17:33:20 -0500")
    Response.create(body: "flustered", created_at: "Tue, 22 Aug 2017 13:12:27 -0500")
    Response.create(body: "inventive", created_at: "Mon, 28 Aug 2017 17:11:42 -0500")
    Response.create(body: "flustered", created_at: "Mon, 28 Aug 2017 13:07:15 -0500")
    Response.create(body: "happy", created_at: "Mon, 28 Aug 2017 09:35:56 -0500")
    Response.create(body: "anxious", created_at: "Fri, 8 Sep 2017 13:00:18 -0500")
    Response.create(body: "sick", created_at: "Fri, 8 Sep 2017 09:09:06 -0500")
    Response.create(body: "distracted", created_at: "Thu, 7 Sep 2017 17:00:56 -0500")
    Response.create(body: "sick", created_at: "Thu, 7 Sep 2017 09:21:09 -0500")
  end
end
