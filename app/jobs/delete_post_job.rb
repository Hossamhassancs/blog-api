class DeletePostJob < ApplicationJob
  queue_as :default

  def perform(*args)
    posts=Post.all
    posts.each do |post|
      if Time.now - post.created_at >= 86400
         post.destroy
      end
    end
  end
end
