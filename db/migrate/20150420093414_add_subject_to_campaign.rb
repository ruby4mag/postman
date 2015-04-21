class AddSubjectToCampaign < ActiveRecord::Migration
  def change
    add_column :campaigns, :mailsubject, :string
  end
end
