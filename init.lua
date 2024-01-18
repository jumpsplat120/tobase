---Takes a number, and converts it to the base specified.
---@param x number The number to convert into different base.
---@param base number The base to convert to.
---@return string
---@nodiscard
tobase = function(x, base)
    local result = {}
    
    if x == 0 then return "0" end

    while x > 0 do
        local digit = x % base

        result[#result + 1] = digit < 10 and digit or string.char(55 + digit)

        x = math.floor(x / base)
    end
    
    return string.reverse(table.concat(result))
end