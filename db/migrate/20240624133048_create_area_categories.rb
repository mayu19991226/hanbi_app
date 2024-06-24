class CreateAreaCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :area_categories do |t|
      t.string :title
      t.string :area_image
      t.text :body
      t.string :body_image

      t.timestamps
    end
  end
end
