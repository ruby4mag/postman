class AddSubjectToEmailTemplate < ActiveRecord::Migration
  def change
    add_column :email_templates, :mailsubject, :string
  end
end
