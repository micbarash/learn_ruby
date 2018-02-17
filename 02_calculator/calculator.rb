def add a, b
	return a + b
end

def subtract a, b
	return a - b
end

def sum arr
	arrSum = 0
	arr.each do |item|
		arrSum = arrSum + item
	end
	return arrSum
end

def multiply arr
	arrSum = 1
	arr.each do |item|
		arrSum = arrSum * item
	end
	return arrSum
end

def power a, b
	return a ** b
end

def factorial a
	i = 1
	counter = a
	if a == 0
		return 0
	elsif a == 1
		return 1
	else
		while i < counter
			a = a * i
			i = i + 1
		end
	return a
	end
end
