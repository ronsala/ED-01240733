//
//  Definition1ViewController.swift
//  ED 01240733
//
//  Created by RONALD SALA on 1/24/17.
//  Copyright © 2017 RON SALA. All rights reserved.
//  Class exercise for Nick Walter's "How to Make a Freaking iPhone App"
//

import UIKit

class Definition1ViewController: UIViewController {
    
    
    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = Emoji()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji.stringEmoji
        birthYearLabel.text = "Origination Date: \(emoji.birthYear)"
        categoryLabel.text = "Category: \(emoji.category)"
        definitionLabel.text = emoji.definition
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
