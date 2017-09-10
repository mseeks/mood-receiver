class AddResponsesTable < ActiveRecord::Migration[5.0]
  def change
    create_table :responses do |t|
      t.string :body, index: true
      
      t.timestamps
    end
  end
end
