//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Oliver Boulton on 10/03/2021.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji.stringEmoji
        birthYearLabel.text = "Date Drawn Up: \(emoji.birthYear)"
        categoryLabel.text = "Catergory: \(emoji.category)"
        definitionLabel.text = emoji.definition
                
    
    }
    

   

}
