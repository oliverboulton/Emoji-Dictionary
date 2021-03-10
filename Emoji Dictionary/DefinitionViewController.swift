//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Oliver Boulton on 10/03/2021.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "No Emoji"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji
        
        if emoji == "🐳" {
            definitionLabel.text = "This is a motherfucking Whale"}
        if emoji == "🐶" {
            definitionLabel.text = "This is a motherfucking Dog"}
        if emoji == "🐹" {
            definitionLabel.text = "This is a motherfucking Mouse"}
        if emoji == "🦂" {
            definitionLabel.text = "This is a motherfucking Scorpian"}
        if emoji == "🐬" {
            definitionLabel.text = "This is a motherfucking Dolphine"}
        if emoji == "🐈" {
            definitionLabel.text = "This is a motherfucking Cat"}
        if emoji == "🦘" {
            definitionLabel.text = "This is a motherfucking Kangaroo"}
            
            
            
        //    🐶","🐹","🦂","🐬","🐳","🐈","🦘
            
                
        
    

        // Do any additional setup after loading the view.
    }
    

   

}
