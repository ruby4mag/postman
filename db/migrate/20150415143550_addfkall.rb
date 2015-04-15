class Addfkall < ActiveRecord::Migration
  def change

remove_foreign_key :campaigns , :email_lists
add_foreign_key :campaigns , :email_lists,  on_delete: :cascade

remove_foreign_key :campaigns , :email_templates
add_foreign_key :campaigns , :email_templates,  on_delete: :cascade

  end
end
