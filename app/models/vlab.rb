class Vlab < ActiveRecord::Base

validates :title, presence: true
validates :instruction, presence: true

end