class Campaign < ActiveRecord::Base
  belongs_to :account
  validates :name, presence: true, :presence => { :message => "is required." }
  validates :email_limit, numericality: { only_integer: true }
end
