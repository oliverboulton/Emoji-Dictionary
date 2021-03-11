//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Oliver Boulton on 08/03/2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableview: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableview.dataSource = self
        tableview.delegate = self
        emojis = makeEmojiArray()
        
    
    
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableview.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as!
            DefinitionViewController
        defVC.emoji = sender as! Emoji
        
        
    }
    //🐶","🐹","🦂","🐬","🐳","🐈","🦘
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "🐳"
        emoji1.birthYear = 2010
        emoji1.category = "Animal"
        emoji1.definition = "Its a blue whale, the biggest anmial on earth"
        
    
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🐹"
        emoji2.birthYear = 2010
        emoji2.category = "Animal"
        emoji2.definition = "Its a Mouse, just a little mouse"
        

        let emoji3 = Emoji()
        emoji3.stringEmoji = "🦂"
        emoji3.birthYear = 2010
        emoji3.category = "Animal"
        emoji3.definition = "Its a Scoprion, what out it could sting you"
        

        let emoji4 = Emoji()
        emoji4.stringEmoji = "🐬"
        emoji4.birthYear = 2010
        emoji4.category = "Animal"
        emoji4.definition = "Its a dolphin, they like to swim"
        

        let emoji5 = Emoji()
        emoji5.stringEmoji = "🐈"
        emoji5.birthYear = 2010
        emoji5.category = "Animal"
        emoji5.definition = "Its a cat, G's a pussy"
        

        let emoji6 = Emoji()
        emoji6.stringEmoji = "🦘"
        emoji6.birthYear = 2010
        emoji6.category = "Animal"
        emoji6.definition = "Its a Kangaroo, they jump really high"
        
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }
    
}

