# Project:  Rock, Papers, scissors in lua

## Preview
This project is a command line Rock-Paper-Scissors game written in Lua. The player chooses between "rock", "paper" or "scissors", and the computer also makes a random choice. The program compares the two choices and determines the winner.

![Previw](./screenshote/Screenshot_2024-06-03_11-29-42.png)

## Fonctionality

* The prgramm ask the player to choose beetween "rock, paper or scissors".
* Generates a random choice for the computer
* Compare the choice of the player and the computer and determined the winner
* Print the result (Win, Loose or Equality)
* Quit the game while taping "quit"

## Installation

1. Clone the repo
```bash
    git clone git@github.com:C4LUS/rock_paper_scissors.git
```
2. Go to the repo
```bash
    cd rock_paper_scissors
```
2. Run the programm using this command:
```bash
    lua rock_paper_scissors.lua
```
## Code detail

### Variable

* 'choice': Table containing the possible choice options : rock, papers, scissors

### Functions

* GetComputerChoice(): Generates and return a random choice for the computer.

    * Use Math.randomseed(os.time()) for initialize the random number generator.
    * Use Math.random(1, 3) to choose a random index in the table choice.

* WinOrLoose: Determines the result of the game by comparing the player's choice and that of the computer.

    * Return "Equality" if the two choices are identical.
    * Return "Victory" if the player win.
    * Retrun "Loose" if the player loose.

### Principal loop

* Ask player to make a choice or taped "quit" to quit the game.
* Check if the player choice is valid.
* Display error message if it's a non valid choice.
* Generates the computer choice by calling GetComputerChoice() function.
* Display Computer choice.
* Determined and display the result by callinf WinOrLoose() function.
