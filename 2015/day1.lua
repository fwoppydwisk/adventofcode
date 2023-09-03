file = io.open ("day1.txt", "r")
io.input(file)
local puzzleinput = io.read()
local characters = {}
local ans_1 = 0
local ans_2 = 0
local ans_2_solved = false

for i = 1, #puzzleinput do
    local char = puzzleinput:sub(i, i)
    table.insert(characters, char)
end

for i, char in ipairs(characters) do
    if char == '(' then
        ans_1 = ans_1 + 1
    else
        ans_1 = ans_1 - 1
    end

    if ans_1 == -1 and ans_2_solved == false then
        ans_2 = i
        ans_2_solved = true
    end
end

print("Part 1:", ans_1)
print("Part 2:", ans_2)