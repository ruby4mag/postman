class AddFromToEmailTemplate < ActiveRecord::Migration
  def change
    add_column :email_templates, :mailfrom, :string
  end
end
