class Post < ApplicationRecord
  belongs_to :user
  belongs_to :area_category

  validates :title, presence: true, length: { maximum: 50 } # エラーメッセージを表示させるためにはビューで表示する必要があることを忘れないように
  validates :body, presence: true, length: { maximum: 65000 }
  validates :procedure_image, presence: true
  validates :post_category, presence: true
  validates :procedure_date, presence: true
  validates :satisfaction_rating, presence: true
end
