class Task < ActiveRecord::Base

	def is_delayed?
	 	self.deadline < Date.today
	end
	validates :name, presence: true
	validates :deadline, presence: true
	validates :duration, presence: true, numericality: true 

end
