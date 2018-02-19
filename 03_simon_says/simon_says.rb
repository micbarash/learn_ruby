#write your code here
def echo string
	return string.to_s
end

def shout str1
	return str1.upcase
end

def repeat str2, num = 2

	return (((str2 + ' ') * num).to_s).chomp(' ')
end

def start_of_word word, n
	return word[0, n]
end

def first_word string
	return string.split(' ')[0]
end

def titleize string
	arr = string.split(' ')
	arr.each do |word|
		if word.downcase == 'and' or word.downcase == 'the' or word.downcase == 'over'
			if arr[0] == word
				word = word.capitalize!
			end
			word = word
		else
			word = word.capitalize!
		end
	end
	newStr = arr.join(' ')
	return newStr
end

puts titleize 'the shmulik and kipod'