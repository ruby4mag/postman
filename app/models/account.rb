class Account < ActiveRecord::Base
  validates :name, presence: true, :presence => { :message => "is required." }
end
