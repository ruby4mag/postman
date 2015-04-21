class Campaign < ActiveRecord::Base
  belongs_to :account
  validates :name, presence: true, :presence => { :message => "is required." }
  validates :email_limit, numericality: { only_integer: true }

 before_save :default_values
  def default_values
    self.runstatus ||= 'Future'
  end
 before_update :check_date
  def check_date 
    if self.runtime_changed? 
      self.runstatus = 'Future'
    end
  end


end
