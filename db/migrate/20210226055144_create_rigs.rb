class CreateRigs < ActiveRecord::Migration[6.1]
  def change
    create_table :rigs do |t|
      t.string :make
      t.string :model
      t.integer :year_model
      t.integer :user_id
      t.boolean :curret_rig, default: false
      t.timestamps
    end
  end
end
