class AddBodyTitleToAreaCategories < ActiveRecord::Migration[7.0]
  def change
    add_column :area_categories, :body_title, :string
  end
end
