class CreateTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :topics do |t|
      t.string :name
      t.integer :min_age, default: 0
      t.integer :max_age, default: 90

      t.timestamps
    end
  end
end
