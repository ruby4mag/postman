class Addfkall1 < ActiveRecord::Migration
  def change
remove_foreign_key :campaigns , :accounts
add_foreign_key :campaigns , :accounts,  on_delete: :cascade
  end
end
