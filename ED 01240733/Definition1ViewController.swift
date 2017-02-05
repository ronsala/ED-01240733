//
//  Definition1ViewController.swift
//  ED 01240733
//
//  Created by RONALD SALA on 1/24/17.
//  Copyright © 2017 RON SALA. All rights reserved.
//

import UIKit

class Definition1ViewController: UIViewController {
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "😅" {
        definitionLabel.text = "Sweating from laughing!"
        }
        if emoji == "🦊" {
            definitionLabel.text = "Fox running!"
        }
        if emoji == "🍌" {
            definitionLabel.text = "Slip and fall hazard!"
        }
        if emoji == "🤾🏿‍♂️" {
            definitionLabel.text = "Pelé!"
        }
        if emoji == "❤️" {
            definitionLabel.text = "My love!"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
