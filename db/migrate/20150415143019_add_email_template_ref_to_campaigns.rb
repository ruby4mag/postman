class AddEmailTemplateRefToCampaigns < ActiveRecord::Migration
  def change
    add_reference :campaigns, :email_template, index: true, foreign_key: true , on_delete: :cascade
  end
end
