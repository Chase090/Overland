class CreateRigs < ActiveRecord::Migration[6.1]
  def change
    create_table :rigs do |t|
      t.string :name
      t.string :make
      t.string :model
      t.integer :year_model
      t.integer :user_id
      t.boolean :active, default: false
      t.timestamps
    end
  end
end
