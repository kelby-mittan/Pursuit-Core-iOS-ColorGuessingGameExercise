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
        randomColor.backgroundColor = myColor
    }
    
    
    @IBAction func redGreenOrBlue(_ sender: UIButton) {
        let randomRed = CGFloat.random(in: 0...1)
        let randomGreen = CGFloat.random(in: 0...1)
        let randomBlue = CGFloat.random(in: 0...1)
        let colorArr = [randomRed, randomGreen, randomBlue]
        let maxColor = colorArr.max()
        
        if sender.tag == 0 && maxColor == randomRed {
            rightOrWrong.text = "Correct, red is most dominant"
        } else if sender.tag == 1 && maxColor == randomGreen {
            rightOrWrong.text = "Correct, green is most dominant"
        } else if sender.tag == 2 && maxColor == randomBlue {
            rightOrWrong.text = "Correct, blue is most dominant"
        } else {
            rightOrWrong.text = "Incorrect"
        }
//        if let validMaxColor = maxColor {
//            switch validMaxColor {
//            case randomRed:
//                if sender.tag == 0 {
//                    rightOrWrong.text = "Correct"
//                } else {
//                    rightOrWrong.text = "Incorrect"
//                }
//            case randomGreen:
//                if sender.tag == 1 {
//                    rightOrWrong.text = "Correct"
//                } else {
//                    rightOrWrong.text = "Incorrect"
//                }
//            case randomBlue:
//                if sender.tag == 2 {
//                    rightOrWrong.text = "Correct"
//                } else {
//                    rightOrWrong.text = "Incorrect"
//                }
//            default:
//                rightOrWrong.text = "Error"
//            }
//        }
//        rightOrWrong.text = "wrong"
    }
    
    @IBAction func anotherColor(_ sender: UIButton) {
        let randomRed = CGFloat.random(in: 0...1)
        let randomGreen = CGFloat.random(in: 0...1)
        let randomBlue = CGFloat.random(in: 0...1)
        let myColor = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: CGFloat.random(in: 0...1))
        randomColor.backgroundColor = myColor
    }
}

