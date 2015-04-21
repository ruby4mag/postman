class AddRunstatusToCampaign < ActiveRecord::Migration
  def change
    add_column :campaigns, :runstatus, :string
  end
end
