class CreateSupports < ActiveRecord::Migration[5.1]
  def change
    create_table :supports do |t|
      t.string :title
      t.text :summary

      t.timestamps
    end
  end
end
