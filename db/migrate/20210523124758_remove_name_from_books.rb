class RemoveNameFromBooks < ActiveRecord::Migration[5.0]
  def change
    remove_column :books, :name, :string
  end
end
