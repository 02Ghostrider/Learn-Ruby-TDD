def translate(phrase)
	vowels = %w(a e i o u A E I O U)
	x = nil
	i = 0
	asephray = Array.new
	phraseA = phrase.split
	phraseA.map do |word|
		if vowels.include? word[0]
			ordway = word + "ay"
		else
			x = word.index(/[aeiou]/)
			y = x - 1
			if word[y] == "q"
				z = x + 1
				firstChar = word.slice(0..x)
				ordway = word.slice(z..-1) + firstChar + "ay"
			else
				firstChar = word.slice(0..y)
				ordway = word.slice(x..-1) + firstChar + "ay"
			end
		end
		asephray << ordway
	end
	return asephray.join(" ")
end
