class CreatePost1Images < ActiveRecord::Migration[6.1]
  def change
    create_table :post1_images do |t|
      t.text :shop_name
      t.text :caption
      t.integer :user_id

      t.timestamps
    end
  end
end
