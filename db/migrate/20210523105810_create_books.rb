class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :name
      t.text :body
      t.string :profile_image_id
      t.integer :user_id

      t.timestamps
    end
  end
end
