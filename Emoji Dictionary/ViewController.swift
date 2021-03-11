//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Oliver Boulton on 08/03/2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableview: UITableView!
    
    var emojis = ["🐶","🐹","🦂","🐬","🐳","🐈","🦘"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableview.dataSource = self
        tableview.delegate = self
        
    
    
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
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
        defVC.emoji = sender as! String
        
        
    }
    //🐶","🐹","🦂","🐬","🐳","🐈","🦘
    
    func makeEmojiArray() -> [String] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "🐳"
        emoji1.birthYear = 2010
        emoji1.category = "Animal"
        emoji1.definition = "Its a blue whale, the biggest anmial on earth"
    
    
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🐳"
        emoji2.birthYear = 2010
        emoji2.category = "Animal"
        emoji2.definition = "Its a blue whale, the biggest anmial on earth"
    
    
    }
    
}

