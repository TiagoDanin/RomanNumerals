-- Module options:
local error_msg_genesiPassword = true
local register_global_module_RomanNumerals = false
local global_module_name_genesiPassword = 'RomanNumerals'

--[==[
By 2016 Tiago Danin
GNU GENERAL PUBLIC LICENSE
Version 2, June 1991
see https://github.com/TiagoDanin/RomanNumerals/blob/master/LICENSE
]==]--

local RomanNumerals = {
	version = '1.1.0',
	name = 'RomanNumerals',
	author = 'Tiago Danin - 2016',
	license = 'GPL v2',
	page = 'https://github.com/LuaAdvanced/RomanNumerals'
}

if register_global_module_RomanNumerals then
  _G[global_module_name_RomanNumerals] = RomanNumerals
end

function RomanNumerals.convent (input)
	if not input then
		if error_msg_genesiPassword then error('RomanNumerals[convent] >> ERROR: input is a value nil') end
		return
	end
	if type(input) ~= 'number' then
		if input:match('^[%d]*$') then
			input = math.abs(input)
		else
			if error_msg_genesiPassword then error('RomanNumerals[convent] >> ERROR: input not is a number') end
			return
		end
	else
		input = math.abs(input)
	end
	if input > 1000 then
		if error_msg_genesiPassword then error('RomanNumerals[convent] >> is a value large. MAX 1000') end
		return
	end

	start = true
	local output = ''
	while start do
		if input >= 1000 then
			output = output .. 'D'
			input = (input - 1000)
		elseif input >= 900 then
			output = output .. 'CM'
			input = (input - 900)
		elseif input >= 500 then
			output = output .. 'M'
			input = (input - 500)
		elseif input >= 400 then
			output = output .. 'CD'
			input = (input - 400)
		elseif input >= 100 then
			output = output .. 'C'
			input = (input - 100)
		elseif input >= 90 then
			output = output .. 'XC'
			input = (input - 90)
		elseif input >= 50 then
			output = output .. 'L'
			input = (input - 50)
		elseif input >= 40 then
			output = output .. 'XL'
			input = (input - 40)
		elseif input >= 10 then
			output = output .. 'X'
			input = (input - 10)
		elseif input >= 9 then
			output = output .. 'IX'
			input = (input - 9)
		elseif input >= 5 then
			output = output .. 'V'
			input = (input - 5)
		elseif input >= 4 then
			output = output .. 'IV'
			input = (input - 4)
		elseif input >= 1 then
			output = output .. 'I'
			input = (input - 1)
		end

		if input <= 0 then
			start = false
		end
	end

	return output
end

return RomanNumerals
