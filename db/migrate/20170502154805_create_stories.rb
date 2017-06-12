class CreateStories < ActiveRecord::Migration[5.1]
  def change
    create_table :stories do |t|
      t.string :author
      t.string :email
      t.text :body
      t.integer :topic_id

      t.timestamps
    end
  end
end
