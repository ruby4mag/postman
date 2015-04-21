class EmailList < ActiveRecord::Base
  belongs_to :users
  validates :name, presence: true, :presence => { :message => "is required." }
#  validates :datafile, presence: true, :presence => { :message => "is required." }
# validate :form_person

def form_person
   if datafile.nil?
      errors.add( :dd ,"can't be in the past")
   end
end

end
