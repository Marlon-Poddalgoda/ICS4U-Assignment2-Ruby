#!/usr/bin/env ruby

##
# This program is the Rock, Paper, Scissors game.
#
# Created by: Marlon Poddalgoda
# Version: 1.0
# Since:   2021-05-09
# frozen_string_literal: true


def rock_paper_scissors(userValue, compValue)
    # compares the values to determine a winner

    # variable
    winValue = ""

    # if statement
    if userValue == compValue
        # if uservalue and computer value are the same
        winValue = "The match was a tie"

    elsif userValue == "rock"
        # if user choose rock
        if compValue == "paper"
            winValue = "Sorry, the computer won"
        elsif compValue == "scissors"
            winValue = "Congrats, you won!"
        end

    elsif userValue == "paper"
        # if user choose paper
        if compValue == "scissors"
            winValue = "Sorry, the computer won"
        elsif compValue == "rock"
            winValue = "Congrats, you won!"
        end

    elsif userValue == "scissors"
        # if user choose scissors
        if compValue == "rock"
            winValue = "Sorry, the computer won"
        elsif compValue == "paper"
            winValue = "Congrats, you won!"
        end

    else
        # error catch
        winValue = "Match undetermined, try again."
    end

    # return statement
    return winValue
end

begin
    # try statement

    # constants
    TWO = 2
    THREE = 3

    # program info
    puts "This is the 'Rock, Paper, Scissors' game!"
    puts

    while true do
        # Asks user for input
        print "Enter your choice (rock, paper, scissors): "

        # Gets the user input as a string
        userChoice = gets.chomp
        userChoice = userChoice.downcase

        if userChoice == "rock" ||
            userChoice == "paper" ||
            userChoice == "scissors"
            # user inputs one of 3 choices

            # generate random num
            compNum = rand(1..THREE)

            # if statement
            if compNum == 1
                compChoice = "rock"
            elsif compNum == 2
                compChoice = "paper"
            elsif compNum == 3
                compChoice = "scissors"
            else
                # error catch
                puts "Error, please try again."
                next
            end

            # call function
            winner = rock_paper_scissors(userChoice, compChoice)

            # output
            puts
            puts "You chose: #{userChoice}"
            puts "The computer chose: #{compChoice}"
            puts
            puts winner

        else
            # call function
            puts "That's not an option, try again."
            next
        end
        break
    end

rescue StandardError
    # error catch, if user input cannot be converted to int
    puts
    puts "Sorry, that's not a number. Please try again."
end

puts
puts "Done."
