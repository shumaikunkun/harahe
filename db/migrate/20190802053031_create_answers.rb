class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :user
      t.float :lat
      t.float :lon
      t.integer :trans
      t.integer :region
      t.integer :day
      t.string :time
      t.integer :genre
      t.integer :ramen

      t.timestamps
    end
  end
end
