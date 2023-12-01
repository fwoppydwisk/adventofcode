local file = io.open("day1.txt", "r")
if file == nil then os.exit(1) end
io.input(file)

-- Part 1
local nums = {}
local n = 0
for line in io.lines() do
    local cleaned_line = string.gsub(line, "%a", "")
    local first_char = string.sub(cleaned_line, 1, 1)
    local last_char = string.sub(cleaned_line, -1)
    local num = first_char .. last_char
    nums[n] = num
    n = n + 1
end
local ans_1 = 0
for idx, val in pairs(nums) do
    ans_1 = ans_1 + val
end

-- Part 2

local num_strings = { "one", "two", "three", "four", "five", "six", "seven", "eight", "nine" }
local outputs = {}

file.seek(file, "set")  -- return to beginning of file
for line in io.lines() do
    -- do the do
end

-- Print the answers
print("Part 1:", ans_1)
