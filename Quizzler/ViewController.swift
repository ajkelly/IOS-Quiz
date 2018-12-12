//  ViewController.swift
//  Quizzler -> Quiz app containing 13 questions
//
//  @author Alex Kelly
//

import UIKit

//Controller class for the quiz application
class ViewController: UIViewController {
    
    let allQuestions = QuestionBank() //model class
    var answerPicked : Bool = false
    var questionNumber : Int = 0 //identifier for the current question
    var userScore : Int = 0 //current user score
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    //first thing that happens when app loads
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        updateUI()
    }

    //identify which button the user pressed
    //either: true (tag -> 1) or false (tag -> 2)
    @IBAction func answerPressed(_ sender: AnyObject) {
        
        if sender.tag == 1 {
            answerPicked = true
        }
        else if sender.tag == 2 {
            answerPicked = false
        }
        
        checkAnswer()
        
        nextQuestion()
    }
    
    //updates the user interface, to be called upon loading the
    //app and following each question being answered
    func updateUI() {
        
        let nextQuestion = allQuestions.list[questionNumber]
        questionLabel.text = nextQuestion.questionText
        
        //update the users score
        scoreLabel.text = "Score: \(userScore)"
        
        //set quesiton number to update
        progressLabel.text = "\(questionNumber + 1)/13"
        
        //set length of progress bar to update
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat (questionNumber + 1)
    }
    
    //if question is not the last question (13th), loads the
    //next question and updates the UI
    //if it is the last question, gives and alert to the using
    //asking if they would like to play again
    func nextQuestion() {
        
        if questionNumber < 12 {
            questionNumber += 1
            updateUI()
        }
        else {
            let alert = UIAlertController(title: "Quiz completed!", message: "would you like to start again?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
                self.startOver()
            }
            
            updateUI()
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
        }
    }
    
    //checks whether the answer selected by the user was the
    //correct answer by checking if they are equal
    func checkAnswer() {
        
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        if answerPicked == correctAnswer {
            ProgressHUD.showSuccess("Correct!")
            userScore += 1
        }
        else {
            ProgressHUD.showError("Incorrect..")
        }
    }
    
    //starts the quiz again from the first (0th) question
    func startOver() {
        questionNumber = 0
        userScore = 0
        updateUI()
    }
    
}
