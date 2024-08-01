class ChangeSatisfactionRatingInPosts < ActiveRecord::Migration[7.0]
  def change
    change_column :posts, :satisfaction_rating, :bigint, default: 1, null: false
  end
end
