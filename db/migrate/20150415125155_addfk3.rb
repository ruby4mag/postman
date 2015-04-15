class Addfk3 < ActiveRecord::Migration
  def change
remove_foreign_key :emailids, :email_lists
add_foreign_key :emailids, :email_lists, on_delete: :cascade

  end
end
