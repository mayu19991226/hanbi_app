class ChangeProcedureImageToBeOptionalInPosts < ActiveRecord::Migration[7.0]
  # not null制約を解除
  def change
    change_column_null :posts, :procedure_image, true
  end
end
