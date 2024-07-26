class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false, limit: 50
      t.text :body, null: false, limit: 65000
      t.string :procedure_image, null: false
      t.string :post_category, null: false
      t.date :procedure_date, null: false
      t.integer :satisfaction_rating, null: false
      t.references :user, null: false, foreign_key: true
      t.references :area_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
