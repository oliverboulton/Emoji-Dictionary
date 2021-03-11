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
    var emoji = "No Emoji"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji
        
        if emoji == "🐳" {
            definitionLabel.text = "This is a motherfucking Whale"
            categoryLabel.text = "Category: Animal"
            birthYearLabel.text = "2011"
        }
        if emoji == "🐶" {
            definitionLabel.text = "This is a motherfucking Dog"
            categoryLabel.text = "Category: Animal"
            birthYearLabel.text = "2012"
        }
        if emoji == "🐹" {
            definitionLabel.text = "This is a motherfucking Mouse"
            categoryLabel.text = "Category: Animal"
            birthYearLabel.text = "2001"
        }
        if emoji == "🦂" {
            definitionLabel.text = "This is a motherfucking Scorpian"
            categoryLabel.text = "Category: Animal"
            birthYearLabel.text = "2051"
        }
        if emoji == "🐬" {
            definitionLabel.text = "This is a motherfucking Dolphine"
            categoryLabel.text = "Category: Animal"
            birthYearLabel.text = "2006"
        }
        if emoji == "🐈" {
            definitionLabel.text = "This is a motherfucking Cat"
            categoryLabel.text = "Category: Animal"
            birthYearLabel.text = "2019"
        }
        if emoji == "🦘" {
            definitionLabel.text = "This is a motherfucking Kangaroo"
            categoryLabel.text = "Category: Animal"
            birthYearLabel.text = "2018"
        }
            
            
            
        //    🐶","🐹","🦂","🐬","🐳","🐈","🦘
            
                
        
    

        // Do any additional setup after loading the view.
    }
    

   

}
