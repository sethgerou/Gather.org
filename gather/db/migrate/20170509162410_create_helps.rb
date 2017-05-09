class CreateHelps < ActiveRecord::Migration[5.1]
  def change
    create_table :helps do |t|
      t.text :summary

      t.timestamps
    end
  end
end
