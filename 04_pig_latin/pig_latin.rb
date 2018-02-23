#write your code here
def translate string
	string = string.downcase
	wordArr = string.split(' ')
	holderArray = []
	def findVowel char
		if char == 'a' or char == 'i' or char == 'e' or char == 'o' or char == 'y' or char =='u'
			return char
		end
	end
	i = 0
	while i < wordArr.length
		if wordArr[i][0] == 'a' or wordArr[i][0] == 'i' or wordArr[i][0] == 'e' or wordArr[i][0] == 'o' or wordArr[i][0] == 'y' or wordArr[i][0] == 'u'
			arr = wordArr[i].split('')
			arr.push('a', 'y')
			newWord = arr.join('')
			wordArr[i].replace(newWord)
			holderArray.push(newWord)
			i += 1
		elsif wordArr[i][0] == 'q' && wordArr[i][1] == 'u'
				arr = wordArr[i].split('')
				arr.delete('q')
				arr.delete('u')
				arr.push('q', 'u', 'a', 'y')
				newWord = arr.join('')
				holderArray.push(newWord)
				i += 1
		elsif wordArr[i].index('qu') != nil
				arr = wordArr[i].split('')
				stopper = arr.index('q')
				ending = 'uay'
				mid = arr[0..stopper].join('')
				start = arr[(stopper + 2)..(-1)].join('')
				newWord = start + mid + ending
				wordArr[i].replace(newWord)
				holderArray.push(newWord)
				i += 1
		else
				arr = wordArr[i].split('')
				vowelPlace = arr.index { |x| x == 'a' or x == 'i' or x == 'e' or x == 'o' or x == 'y' or x =='u'}
				if arr[0] != 'a' && arr[0] != 'i' && arr[0] != 'e' && arr[0] != 'o' && arr[0] != 'y' && arr[0] != 'u'
					newArr = arr[0..(vowelPlace - 1)]
					midPart = newArr.join('')
					start = arr[vowelPlace..(-1)].join('')
					newWord = start + midPart + 'ay'
					holderArray.push(newWord)
					i += 1
				end
		end
	end
	newSentance = holderArray.join(' ')
	return newSentance
end