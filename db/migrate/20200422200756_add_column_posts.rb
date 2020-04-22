class AddColumnPosts < ActiveRecord::Migration[6.0]
  def change
            add_column :posts, :post_sex, :string
  end
end
