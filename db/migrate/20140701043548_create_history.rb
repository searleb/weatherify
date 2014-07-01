class CreateHistory < ActiveRecord::Migration
  def change
    create_table :histories do |t|
    	t.string :location
    	t.string :weather
    	t.integer :user_id
    	t.timestamps
    end
  end
end
