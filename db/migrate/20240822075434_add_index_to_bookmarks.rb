class AddIndexToBookmarks < ActiveRecord::Migration[7.0]
  def change
    # user_id と post_id の組み合わせに対する一意性制約を追加
    add_index :bookmarks, [:user_id, :post_id], unique: true
  end
end
