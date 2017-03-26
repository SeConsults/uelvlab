class Lab < ActiveRecord::Base
  
  validates :sessionNo, presence: true
  
end