class Task < ActiveRecord::Base
  
  validate :module, presence: true
  
end