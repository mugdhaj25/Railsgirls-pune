class AddNewColumnToPosts < ActiveRecord::Migration
  def change
  	change_table :posts do |t| 
  		t.text :text
  	end 
  end
end
