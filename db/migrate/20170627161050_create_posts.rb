class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :url
      t.datetime :created_at
      t.integer :score

      t.timestamps
    end
  end
end
