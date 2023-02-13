//
//  Story.swift
//  MyAdventure
//
//  Created by user232949 on 2/11/23.
//

import Foundation

struct Story {
    
    let stories = [
        storyGame(
                description: "You are floating down a stream in an underground cavern on a raft. You come to a fork in the river, left or right?",
                OptionOne: "right",
                OptionTwo: "left",
                outcomeOne: 2,
                outcomeTwo: 1
            ),
        storyGame(
                description: "You come to a room with two doors, one red, one blue.",
                OptionOne: "go through a red door",
                OptionTwo: "go through a blue door",
                outcomeOne: 2,
                outcomeTwo: 3
            ),
        storyGame(
                description: "You come to a room where the door shuts behind you and you sit in the middle of a room filled with crystal clear water that looks endless.",
                OptionOne: "wait some time to think",
                OptionTwo: "jump into water",
                outcomeOne: 4,
                outcomeTwo: 5
            ),
        storyGame(
                description: "The door shuts behind you and you fall through a trapdoor into an endless hole",
                OptionOne: "You lost :(",
                OptionTwo: "Try again",
                outcomeOne: 0,
                outcomeTwo: 0
            ),
        storyGame(
                description: "You wait and a ooor opens and you see light creep in as you open it and realize you have escaped.",
                OptionOne: "You Win!!!",
                OptionTwo: "Play Again",
                outcomeOne: 0,
                outcomeTwo: 0
            ),
        storyGame(
                description: "A large sea creature comes up really fast and eats you alive.",
                OptionOne: "You Lost :(",
                OptionTwo: "Try Again",
                outcomeOne: 0,
                outcomeTwo: 0
            )
        ]
  
    var index = 0
        func getDescription() -> String{
            return stories[index].description
        }

        func getOptionOne() -> String{
            return stories[index].OptionOne
        }

        func getOptionTwo() -> String{
            return stories[index].OptionTwo
        }
        mutating func optionChange(_ option: String) {
            if option == stories[index].OptionOne {
                index = stories[index].outcomeOne
            } else if option == stories[index].OptionTwo {
                index = stories[index].outcomeTwo
            }
    }
}
