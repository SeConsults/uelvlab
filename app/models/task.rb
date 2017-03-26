class Task < ActiveRecord::Base
  validates :labNo, presence: true
end