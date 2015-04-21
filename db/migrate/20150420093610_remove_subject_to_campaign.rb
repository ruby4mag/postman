class RemoveSubjectToCampaign < ActiveRecord::Migration
  def change
    remove_column :campaigns, :mailsubject, :string
  end
end
