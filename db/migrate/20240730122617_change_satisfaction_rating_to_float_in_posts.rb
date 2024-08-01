class ChangeSatisfactionRatingToFloatInPosts < ActiveRecord::Migration[7.0]
  def change
    change_column :posts, :satisfaction_rating, :float, null: false
  end
end
