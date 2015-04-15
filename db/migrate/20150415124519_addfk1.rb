class Addfk1 < ActiveRecord::Migration
  def change
   remove_foreign_key :emailids, :email_lists
  end
end
