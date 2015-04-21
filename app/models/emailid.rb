require 'csv'
class Emailid < ActiveRecord::Base
  belongs_to :EmailList




def self.import(file, list_id)
     unless file.nil?
     CSV.foreach(file.path, headers: true) do |row|
       record = Emailid.where(
         :email_list_id => EmailList.find_by(name: list_id),
         :email => row[0]
        ).first_or_create
       end
     end

     end
end


