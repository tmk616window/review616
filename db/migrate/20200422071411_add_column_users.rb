class AddColumnUsers < ActiveRecord::Migration[6.0]
  def change
            add_column :users, :coment, :text
            add_column :users, :old, :integer
            add_column :users, :programing_language, :string
            add_column :users, :job_past, :string
            
  end
end
