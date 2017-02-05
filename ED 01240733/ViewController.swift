//
//  ViewController.swift
//  ED 01240733
//
//  Created by RONALD SALA on 1/24/17.
//  Copyright © 2017 RON SALA. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var dacooltableview: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dacooltableview.dataSource = self
        dacooltableview.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.category
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! Definition1ViewController
        defVC.emoji = sender as! String
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😅"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "Sweating from laughing"
    
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🦊"
        emoji2.birthYear = 2009
        emoji2.category = "Animal"
        emoji2.definition = "Fox running"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🍌"
        emoji3.birthYear = 2011
        emoji3.category = "Object"
        emoji3.definition = "Slip and fall hazard"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🤾🏿‍♂️"
        emoji4.birthYear = 2004
        emoji4.category = "Person"
        emoji4.definition = "Pelé"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "❤️"
        emoji5.birthYear = 2015
        emoji5.category = "Object"
        emoji5.definition = "B my love"
    
    
        return [emoji1, emoji2, emoji3, emoji4, emoji5]
        }
    
}
