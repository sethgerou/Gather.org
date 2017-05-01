class CreateTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :topics do |t|
      t.string :name
      t.integer :min_age
      t.integer :max_age

      t.timestamps
    end
  end
end
