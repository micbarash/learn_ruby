#write your code here
def ftoc tempf
	tempc = (tempf.to_f - 32) * 5/9
	return tempc
end

def ctof tempc
	tempf = (tempc.to_f) * 9/5 + 32
	return tempf
end