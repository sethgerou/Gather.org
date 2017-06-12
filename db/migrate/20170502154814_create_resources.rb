class CreateResources < ActiveRecord::Migration[5.1]
  def change
    create_table :resources do |t|
      t.string :name
      t.string :url
      t.string :phone
      t.string :email
      t.string :address
      t.integer :zip_code
      t.text :summary
      t.integer :topic_id

      t.timestamps
    end
  end
end
