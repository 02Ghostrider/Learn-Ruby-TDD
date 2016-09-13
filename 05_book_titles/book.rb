class Book
	attr_accessor :title

	def title=(title_phrase)
		chain = Array.new
		notCap = %w[a an and the amid at but by down from in 
			into like near of off on onto out over with till 
			to unto up upon with as]
		werds = title_phrase.split
		chain << werds.shift.capitalize
		werds.map do |werd|
			if notCap.include? werd
				chain << werd.downcase
			else
				chain << werd.capitalize
			end
		end
		if chain.length > 1
			@title = chain.join(" ").to_s
		else
			@title = chain.join.to_s
		end
	end
end

