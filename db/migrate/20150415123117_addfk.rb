class Addfk < ActiveRecord::Migration
  def change
add_foreign_key :emailids, :email_lists , :dependent => :destroy
  end
end
