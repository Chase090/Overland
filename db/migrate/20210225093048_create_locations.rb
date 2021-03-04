class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.decimal :longitude
      t.decimal :latitude
      t.integer :user_id
      t.string :state
      t.integer :distance
      t.string :url
      t.string :season
      t.timestamps
    end
  end
end
