class AddSummaryToTopics < ActiveRecord::Migration[5.1]
  def change
    add_column :topics, :summary, :text
  end
end
