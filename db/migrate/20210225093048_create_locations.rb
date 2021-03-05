class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.decimal :longitude
      t.decimal :latitude
      t.string :state
      t.string :url
      t.string :season
      t.timestamps
    end
  end
end
