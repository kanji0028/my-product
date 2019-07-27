class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :price,     null: false
      t.string :category,   null: false
      t.string :mental,     null: false
      t.text   :memo
      t.timestamps
    end
  end
end
