class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :author
      t.string :email
      t.text :body
      t.integer :topic_id

      t.timestamps
    end
  end
end
