class Comment < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  belongs_to :posts
  after_save :comments_count

  def comments_count
    posts.update!(:comments_counter)
  end

  private :comments_count
end
