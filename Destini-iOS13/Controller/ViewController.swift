//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var storyBrain = StoryBrain()
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        guard let choice = sender.currentTitle else { return }
        storyBrain.nextPage(userChoice: choice)
        updateViews()
    }
    
    func updateViews() {
        
        let page = storyBrain.getCurrentPage()
        storyLabel.text = page.title
        choice1Button.setTitle(page.choice1, for: .normal)
        choice2Button.setTitle(page.choice2, for: .normal)
    }
    
}

