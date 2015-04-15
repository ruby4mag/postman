class AddEmailListRefToCampaigns < ActiveRecord::Migration
  def change
    add_reference :campaigns, :email_list, index: true, foreign_key: true
  end
end
