RomanNumerals = require('RomanNumerals')

local start = true
if arg[1] then -- test travis
	print(RomanNumerals.convent(0)    ) --Nothing...
	print(RomanNumerals.convent(4)    )	--IV
	print(RomanNumerals.convent(321)  ) --CCCXXI
	print(RomanNumerals.convent('400')) --CD
	print(RomanNumerals.convent('567')) --MLXVII
	start = false
end

while start do
	io.write('> ')
	input = io.read()
	print(RomanNumerals.convent(input))
end
