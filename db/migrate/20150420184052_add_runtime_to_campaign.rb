class AddRuntimeToCampaign < ActiveRecord::Migration
  def change
    add_column :campaigns, :runtime, :datetime
  end
end
