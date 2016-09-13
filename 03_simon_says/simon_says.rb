#write your code here
def echo(strng)
	strng
end

def shout(strng)
	strng.upcase
end

def repeat(strng, n=2)
	repeated = Array.new
	n.times do
		repeated << strng
		repeated << " "
	end
	repeated.pop
	return repeated.join.to_s
end

def start_of_word(strng, n)
	strngArray = strng.chars.map(&:to_s)
	return strngArray.shift(n).join.to_s
end

def first_word(strng)
	frst = strng.split.shift(1)
	return frst.join.to_s
end

def titleize(strng)
	strngArray = strng.split
	result = Array.new
	#Words which do not get capitalized
	noCaps = %w[a and the amid at but by down from in into like near of off on onto out over with till to unto up upon with as]
	result << strngArray.shift.capitalize  #Caps 1st word
	if strngArray.length > 0
		dernier = strngArray.pop.capitalize  #Caps last word
	else
		return result.join.to_s
	end
	if strngArray.length > 0
		strngArray.each {|werd| 
			if noCaps.include? werd
				result << " "
				result << werd
			else
				result << " "
				result << werd.capitalize 
			end	
		}
	end	
	if dernier
		result << " "
		result[-1] << dernier
	end
	return result.join.to_s
end

