class RemoveProfileImageIdFromBooks < ActiveRecord::Migration[5.0]
  def change
    remove_column :books, :profile_image_id, :string
  end
end
