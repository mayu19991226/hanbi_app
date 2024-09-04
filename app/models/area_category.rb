class AreaCategory < ApplicationRecord
  # 1つのカテゴリーは複数の投稿に紐付けられる。ユーザーが削除されたら関連付いた投稿も削除される
  has_many :posts, dependent: :destroy

  # 検索対象のテーブルのカラムを明示
  def self.ransackable_attributes(auth_object = nil)
    %w[title body]
  end
end
