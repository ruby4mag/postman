class RemoveLastNameFromemailTemplates < ActiveRecord::Migration
  def change
	remove_column :email_templates, :last_name, :strings, {}
  end
end
