class Lesson < ActiveRecord::Base
  
  validate :title, presence: true
  
end