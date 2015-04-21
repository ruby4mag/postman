class RemoveSubjectToEmailTemplate < ActiveRecord::Migration
  def change
    remove_column :email_templates, :mailsubject, :string
  end
end
