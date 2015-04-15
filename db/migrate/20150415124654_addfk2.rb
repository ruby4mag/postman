class Addfk2 < ActiveRecord::Migration
  def change
   
add_foreign_key :emailids, :email_lists,  dependent: :delete
  end
end
