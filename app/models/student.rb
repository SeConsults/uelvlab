class Student < ActiveRecord::Base
  
  validate :studentname presence: true
  
end