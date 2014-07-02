class ChangeHistory < ActiveRecord::Migration
  def change
  	change_table :histories do |t|
  		t.remove :weather
  		t.integer :time
  		t.string :weather_summary
  		t.string :weather_temp
  	end
  end
end
