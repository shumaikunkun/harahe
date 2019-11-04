class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :sun
      t.string :mon
      t.string :tue
      t.string :wed
      t.string :thu
      t.string :fry
      t.string :sat
      t.float :latitude
      t.float :longitude
      t.string :address
      t.string :category
      t.string :url
      t.string :tel
      t.string :img

      t.timestamps
    end
  end
end
