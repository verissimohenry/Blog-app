class Like < ApplicationRecord
  after_save :likes_count
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  belongs_to :posts

  def likes_count
    posts.update!(:likes_counter)
  end

  private :likes_count
end
