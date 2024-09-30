//
//  ViewController.swift
//  Destini
//
//  Created by Gofran Alwaked on 01/08/2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Label: UIButton!
    @IBOutlet weak var choice2Label: UIButton!
    var storyBrain = StoryBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UpdateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
       
        storyBrain.nextStory(choice: userAnswer)

         UpdateUI()
    }
    
    @objc func UpdateUI(){
        
        storyLabel.text = storyBrain.getStoryText()
        let newTitle1 = storyBrain.getChoice1Text()
        choice1Label.setTitle(newTitle1, for: .normal)
        let newTitle2 = storyBrain.getChoice2Text()
        choice2Label.setTitle(newTitle2, for: .normal)
       
    }
}

