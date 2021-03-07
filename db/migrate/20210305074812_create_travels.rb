class CreateTravels < ActiveRecord::Migration[6.1]
  def change
    create_table :travels do |t|
      t.integer :user_id
      t.integer :location_id
      t.integer :distance
      t.string :description
      t.timestamps
    end
  end
end
