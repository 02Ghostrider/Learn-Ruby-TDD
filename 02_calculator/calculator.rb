#write your code here

def add(a,b)
	a + b
end

def subtract(c,d)
	c - d
end

def sum(nums)
	nums.inject(0) { |tot, n| tot = tot + n }
end

def multiply2(e,f)
	e * f
end

def multiplyA(pliers)
	pliers.inject(1) { |prod, n| prod = prod * n }
end

def power(g,h)
	g**h
end

def factorial(i)
	Math.gamma(i+1)
end
