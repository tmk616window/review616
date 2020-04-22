class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :name
      t.string :date
      t.text :message_coment
      t.string :image
      t.string :message_place
      t.integer :people

      t.timestamps
    end
  end
end
