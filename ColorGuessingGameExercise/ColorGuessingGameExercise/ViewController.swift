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
    @IBOutlet weak var rightOrWrong: UILabel!
    var randomRed = CGFloat.random(in: 0...1)
    var randomGreen = CGFloat.random(in: 0...1)
    var randomBlue = CGFloat.random(in: 0...1)
    var correctGuess = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        randomRed = CGFloat.random(in: 0...1)
        randomGreen = CGFloat.random(in: 0...1)
        randomBlue = CGFloat.random(in: 0...1)
        let myColor = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: CGFloat.random(in: 0...1))
        self.randomColor.backgroundColor = myColor
    }
    
    

    @IBAction func redGreenOrBlue(_ sender: UIButton) {
        
        let colorArr = [randomRed, randomGreen, randomBlue]
        let maxColor = colorArr.max()
       
        if correctGuess == true {
            switch sender.tag {
            case 0:
                if maxColor == randomRed {
                    rightOrWrong.text = "Correct, red is most dominant"
                    randomRed = CGFloat.random(in: 0...1)
                    randomGreen = CGFloat.random(in: 0...1)
                    randomBlue = CGFloat.random(in: 0...1)
                    let myColor = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: CGFloat.random(in: 0...1))
                    self.randomColor.backgroundColor = myColor
                } else {
                    rightOrWrong.text = "Incorrect"
                    correctGuess = false
                }
            case 1:
                if maxColor == randomGreen {
                    rightOrWrong.text = "Correct, green is most dominant"
                    randomRed = CGFloat.random(in: 0...1)
                    randomGreen = CGFloat.random(in: 0...1)
                    randomBlue = CGFloat.random(in: 0...1)
                    let myColor = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: CGFloat.random(in: 0...1))
                    self.randomColor.backgroundColor = myColor
                } else {
                    rightOrWrong.text = "Incorrect"
                    correctGuess = false
                }
            case 2:
                if maxColor == randomBlue {
                    rightOrWrong.text = "Correct, blue is most dominant"
                    randomRed = CGFloat.random(in: 0...1)
                    randomGreen = CGFloat.random(in: 0...1)
                    randomBlue = CGFloat.random(in: 0...1)
                    let myColor = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: CGFloat.random(in: 0...1))
                    self.randomColor.backgroundColor = myColor
                } else {
                    rightOrWrong.text = "Incorrect"
                    correctGuess = false
                }
            default:
                rightOrWrong.text = "error"
            }
            
        }
        
        
    }
    
    @IBAction func anotherColor(_ sender: UIButton) {
        randomRed = CGFloat.random(in: 0...1)
        randomGreen = CGFloat.random(in: 0...1)
        randomBlue = CGFloat.random(in: 0...1)
        let myColor = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: CGFloat.random(in: 0...1))
        randomColor.backgroundColor = myColor
        correctGuess = true
    }
}

