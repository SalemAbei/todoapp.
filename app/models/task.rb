class Task < ActiveRecord::Base

	def is_delayed?
	 	self.deadline < Date.today
	end
	
	def distance_from_now_in_days
		(self.deadline - Date.today).to_i     
	end

	validates :name, presence: true
	validates :deadline, presence: true
	validates :duration, presence: true, numericality: true 

end
