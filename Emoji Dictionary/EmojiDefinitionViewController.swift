//
//  EmojiDefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Zeba Khan on 4/30/18.
//  Copyright © 2018 Zeba Khan. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {

    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji
        
        if emoji == "😂" {
        emojiDefinitionLabel.text = "Tears of joy"
        }
// var emojis = ["😂", "😭", "😁", "🤞", "😉", "🏘", "⛪️", "🕋"]
        
        if emoji == "😭" {
            emojiDefinitionLabel.text = "Crybaby"
        }
        if emoji == "😁" {
            emojiDefinitionLabel.text = "Super Happy!"
        }
        if emoji == "🤞" {
            emojiDefinitionLabel.text = "Fingers crossed"
        }
        if emoji == "🏘" {
            emojiDefinitionLabel.text = "Home Sweet Home"
        }
        if emoji == "⛪️" {
            emojiDefinitionLabel.text = "Take me to church"
        }
        if emoji == "🕋" {
            emojiDefinitionLabel.text = "Kaaba"
        }
        if emoji == "😉" {
            emojiDefinitionLabel.text = "A Winky Face"
        }
        
    }

}
