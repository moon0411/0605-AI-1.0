//
//  ViewController.swift
//  0605-AI數學小神童
//
//  Created by 李沐軒 on 2018/6/5.
//  Copyright © 2018年 李沐軒. All rights reserved.
//

import UIKit
import AVFoundation

var num1:Double? = 0
var num2:Double? = 0
var sum:Double? = 0

class ViewController: UIViewController {

    
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var mySegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var num2TextField: UITextField!
    @IBOutlet weak var num1TextField: UITextField!
    @IBAction func choiceSegmentedcontrol(_ sender: UISegmentedControl) {
        
        num1 = Double(num1TextField.text!)!
        num2 = Double(num2TextField.text!)!
        
        if num1 != nil && num2 != nil {
            calculate()
            answerLabel.text = sum!.description
            answerLabel.text = String(format: "%.2f", sum!)
            let speechUtterance =  AVSpeechUtterance(string: answerLabel.text!)
            speechUtterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
            let synth = AVSpeechSynthesizer()
            synth.speak(speechUtterance)
        }
    }
    
    
    func calculate() {
        if mySegmentedControl.selectedSegmentIndex == 0 {
            sum! = num1! + num2!
            //print(sum!)
        } else if mySegmentedControl.selectedSegmentIndex == 1 {
            sum! = num1! - num2!
            //print(sum!)
        } else if mySegmentedControl.selectedSegmentIndex == 2 {
            sum! = num1! * num2!
            //print(sum!)
        } else if mySegmentedControl.selectedSegmentIndex == 3 {
            sum! = num1! / num2!
            //print(sum!)
        }
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

