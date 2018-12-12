//
//  QuestionBank.swift
//  Quizzler
//

import Foundation

//initialises question objects and adds them to a list
class QuestionBank {
    
    var list = [Question]()
    
    init() {
        
        list.append(Question(text: "The sea of tranquility is on the moon.", correctAnswer: true))
        
        list.append(Question(text: "Africa is the continent with the fewest flowering plants.", correctAnswer: false))
        
        list.append(Question(text: "The river Nile is the worlds longest river.", correctAnswer: false))
        
        list.append(Question(text: "Carbon dioxide is the most common atmospheric gas.", correctAnswer: false))
        
        list.append(Question(text: "Greenland is the largest island in the world.", correctAnswer: true))
        
        list.append(Question(text: "The baseball team the \"Blue Jays\" come from San Fransisco.", correctAnswer: false))
        
        list.append(Question(text: "Jennifer Aniston played Rachel Green in Friends.", correctAnswer: true))
        
        list.append(Question(text: "Caffeine content is higher in darker coffee beans.", correctAnswer: false))
        
        list.append(Question(text: "Jamie Vardy holds the Premier League record for scoring in the most consecutive games.", correctAnswer: true))
        
        list.append(Question(text: "Buzz Aldrin\'s mother\'s maiden name was \"Moon\".", correctAnswer: true))
        
        list.append(Question(text: "Saturn was the first planet to be discovered by telescope.", correctAnswer: false))
        
        list.append(Question(text: "The square root of 9 is 81.", correctAnswer: false))
        
        list.append(Question(text: "Leicester City FC won the 2015/16 Premier League under manager Claudio Ranieri.", correctAnswer: true))
    }
}
