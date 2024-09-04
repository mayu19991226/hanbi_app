class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  # コメント（body）へのバリデーションを追加
  validates :body, presence: true, length: { maximum: 65535 }

  # ransack
  def self.ransackable_attributes(auth_object = nil)
    %w[body]
  end

  def self.ransackable_associations(auth_object = nil)
    %w[posts] # エリアカテゴリが関連付けを持つ場合、その関連付けを指定
  end
end
