//
//  ViewController.swift
//  MyAdventure
//
//  Created by user232949 on 2/11/23.
//

import UIKit
    
    class ViewController: UIViewController {
        
        @IBOutlet weak var background: UIImageView!
        @IBOutlet weak var question: UILabel!
        @IBOutlet weak var choiceOne: UIButton!
        @IBOutlet weak var choiceTwo: UIButton!
        var story = Story()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            updateUI()
        }
        @IBAction func choiceSubmission(_ sender: UIButton) {
            story.optionChange(sender.currentTitle!)
            updateUI()
        }
        func updateUI() {
            question.text = story.getDescription()
            choiceOne.setTitle(story.getOptionOne(), for: UIControl.State.normal)
            choiceTwo.setTitle(story.getOptionTwo(), for: UIControl.State.normal)
        }
}
    


