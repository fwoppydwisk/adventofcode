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
local num_replace = { "o1e", "t2o", "t3e", "f4r", "f5e", "s6x", "s7n", "e8t", "n9e" }
local outputs = {}

file.seek(file, "set")  -- return to beginning of file
lines = {}
for line in io.lines() do
    local new_line = line
    for n = 1, 9 do
        new_line = string.gsub(new_line, num_strings[n], num_replace[n])
    end
    table.insert(lines, new_line)
end

local nums_2 = {}

for line_num, val in pairs(lines) do
    local cleaned_line = string.gsub(val, "%a", "")
    local first_char = string.sub(cleaned_line, 1, 1)
    local last_char = string.sub(cleaned_line, -1)
    local num = first_char .. last_char
    nums_2[line_num] = num
end

local ans_2 = 0
for idx, val in pairs(nums_2) do
    ans_2 = ans_2 + val
end

-- Print the answers
print("Part 1:", ans_1)
print("Part 2:", ans_2)
