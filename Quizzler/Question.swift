//
//  Question.swift
//  Quizzler
//
//  @author Alex Kelly
//

import Foundation

// Creates a question object that contains a String as
// the text of the actual question, and the answer, which
// is a boolean value -> either true or false.
class Question {
    
    var questionText : String
    var answer : Bool

    init(text : String, correctAnswer : Bool) {
        
        questionText = text
        answer = correctAnswer
    }
    
    
    
}
