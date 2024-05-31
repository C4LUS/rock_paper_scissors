local choice = {"rock", "paper", "scissors"}

function GetComputerChoice()
    math.randomseed(os.time())
    local index = math.random(1, 3)
    return choice[index]
end

GetComputerChoice()

function WinOrLoose(PlayerChoice, ComputerChoice)
    if PlayerChoice == ComputerChoice then
        return "Equality"
    elseif PlayerChoice == "paper" and ComputerChoice == "rock" or
           PlayerChoice == "scissors" and ComputerChoice == "paper" or
           PlayerChoice == "rock" and ComputerChoice == "scissors" then
        return "VICTORY!!!"
    else
        return "LOOSE"
    end 

end

while true do
    print("Choose your weapon: rock, paper or scissors (tape quit to quit)")
    local PlayerChoice = io.read()
    if PlayerChoice == "quit" then
        break;
    end

    if PlayerChoice ~= "rock" and PlayerChoice ~= "paper" and PlayerChoice ~= "scissors" then
        print("weapon not found")
    else 
        local computer = GetComputerChoice();
        print("Computer choice: ", computer)
        local results = WinOrLoose(PlayerChoice, computer);
        print(results)
    end
end