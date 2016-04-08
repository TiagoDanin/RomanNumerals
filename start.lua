RomanNumerals = require('src/RomanNumerals')

local start = true

while start do
	io.flush('> ')
	input = io.read()
	print(RomanNumerals.convent(input))
end
