class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :author
      t.integer :stars
      t.text :body
      t.text :email
      t.integer :topic_id
      t.integer :resource_id

      t.timestamps
    end
  end
end
