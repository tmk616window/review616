class AddColumnFollowss < ActiveRecord::Migration[6.0]
  def change
            add_column :follows, :follow_user_email, :string
    
  end
end
