class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :post_name
      t.text :post_content
      t.integer :post_old
      t.string :post_job
      t.string :post_email
      t.integer :post_id

      t.timestamps
    end
  end
end
