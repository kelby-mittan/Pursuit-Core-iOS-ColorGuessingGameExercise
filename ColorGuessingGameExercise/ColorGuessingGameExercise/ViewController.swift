//
//  ViewController.swift
//  ColorGuessingGameExercise
//
//  Created by Kelby Mittan on 10/28/19.
//  Copyright © 2019 Kelby Mittan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var randomColor: UIView!
//    let randomRed = CGFloat.random(in: 0...1)
//
//    let myColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: CGFloat.random(in: 0...1))
    
    @IBOutlet weak var rightOrWrong: UILabel!

    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let randomRed = CGFloat.random(in: 0...1)
        let randomGreen = CGFloat.random(in: 0...1)
        let randomBlue = CGFloat.random(in: 0...1)
        let myColor = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: CGFloat.random(in: 0...1))
        self.randomColor.backgroundColor = myColor
    }
    var randomRed = CGFloat.random(in: 0...1)
    var randomGreen = CGFloat.random(in: 0...1)
    var randomBlue = CGFloat.random(in: 0...1)
    var correctGuess = true
    
    @IBOutlet weak var yourScore: UILabel!
    
    @IBAction func redGreenOrBlue(_ sender: UIButton) {
//        var score: Int = 0
        let colorArr = [randomRed, randomGreen, randomBlue]
        let maxColor = colorArr.max()
       
        if correctGuess == true {
            switch sender.tag {
            case 0:
                if maxColor == randomRed {
                    rightOrWrong.text = "Correct, red is most dominant"
//                    score = score + 10
                    randomRed = CGFloat.random(in: 0...1)
                    randomGreen = CGFloat.random(in: 0...1)
                    randomBlue = CGFloat.random(in: 0...1)
                    let myColor = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: CGFloat.random(in: 0...1))
                    self.randomColor.backgroundColor = myColor
                } else {
                    rightOrWrong.text = "WRONG!!!"
                    correctGuess = false
                }
            case 1:
                if maxColor == randomGreen {
                    rightOrWrong.text = "Correct, green is most dominant"
//                    score = score + 10
                    randomRed = CGFloat.random(in: 0...1)
                    randomGreen = CGFloat.random(in: 0...1)
                    randomBlue = CGFloat.random(in: 0...1)
                    let myColor = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: CGFloat.random(in: 0...1))
                    self.randomColor.backgroundColor = myColor
                } else {
                    rightOrWrong.text = "WRONG!!!"
                    correctGuess = false
                }
            case 2:
                if maxColor == randomBlue {
                    rightOrWrong.text = "Correct, blue is most dominant"
//                    score = score + 10
                    randomRed = CGFloat.random(in: 0...1)
                    randomGreen = CGFloat.random(in: 0...1)
                    randomBlue = CGFloat.random(in: 0...1)
                    let myColor = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: CGFloat.random(in: 0...1))
                    self.randomColor.backgroundColor = myColor
                } else {
                    rightOrWrong.text = "WRONG!!!"
                    correctGuess = false
                }
            default:
                rightOrWrong.text = "error"
            }
//            yourScore.text = "Score: \(score)"
            
        }
        
        
    }
    
    @IBAction func anotherColor(_ sender: UIButton) {
        let randomRed = CGFloat.random(in: 0...1)
        let randomGreen = CGFloat.random(in: 0...1)
        let randomBlue = CGFloat.random(in: 0...1)
        let myColor = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: CGFloat.random(in: 0...1))
        randomColor.backgroundColor = myColor
        correctGuess = true
    }
}

