class Timer
	attr_accessor :seconds 
	attr_accessor :time_string
	def initialize
		@seconds = 0
	end

	def time_string
		hours = (@seconds/3600).to_i
		mins = ((@seconds%3600)/60).to_i
		secs = ((@seconds%60)%60).to_i
		@time_string = "%02d" % hours + ":" + "%02d" % mins + ":" + "%02d" % secs
	end
end

