local choice = {"rock", "paper", "scissors"}

function computerChoice()
    local index = math.random(1, 3)
    print("computer choice:", choice[index])
    return choice[index]
end

computerChoice()