class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  # コメント（body）へのバリデーションを追加
  validates :body, presence: true, length: { maximum: 65535 }
end
