class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :description
      t.string :author
      t.integer :post_id

      t.timestamps
    end
  end
end
