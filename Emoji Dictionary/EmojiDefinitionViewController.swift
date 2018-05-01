//
//  EmojiDefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Zeba Khan on 4/30/18.
//  Copyright © 2018 Zeba Khan. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {

    @IBOutlet weak var birthLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji.theEmoji
        emojiDefinitionLabel.text = emoji.defEmoji
        birthLabel.text = "Release Date: \(emoji.releaseDate)"
        categoryLabel.text = "Category: \(emoji.category)"
        
/*
        emojiLabel.text = emoji
        
        if emoji == "😂" {
            emojiDefinitionLabel.text = "Tears of joy"
            birthLabel.text = "Birth Year: 2014"
            categoryLabel.text = "Category: Human Face"
        }
// var emojis = ["😂", "😭", "😁", "🤞", "😉", "🏘", "⛪️", "🕋", "🥩"]
        
        if emoji == "😭" {
            emojiDefinitionLabel.text = "Crybaby"
            birthLabel.text = "Birth Year: 2012"
            categoryLabel.text = "Category: Human Face"
        }
        if emoji == "😁" {
            emojiDefinitionLabel.text = "Super Happy!"
            birthLabel.text = "Birth Year: 2000"
            categoryLabel.text = "Category: Human Face"
        }
        if emoji == "🤞" {
            emojiDefinitionLabel.text = "Fingers crossed"
            birthLabel.text = "Birth Year: 2018"
            categoryLabel.text = "Category: Human Hands"
        }
        if emoji == "🏘" {
            emojiDefinitionLabel.text = "Home Sweet Home"
            birthLabel.text = "Birth Year: 2000"
            categoryLabel.text = "Category: Buildings"
        }
        if emoji == "⛪️" {
            emojiDefinitionLabel.text = "Take me to church"
            birthLabel.text = "Birth Year: 2011"
            categoryLabel.text = "Category: Buildings"
        }
        if emoji == "🕋" {
            emojiDefinitionLabel.text = "Kaaba"
            birthLabel.text = "Birth Year: 2015"
            categoryLabel.text = "Category: Buildings"
        }
        if emoji == "😉" {
            emojiDefinitionLabel.text = "A Winky Face"
            birthLabel.text = "Birth Year: 2010"
            categoryLabel.text = "Category: Human Face"
        }
        if emoji == "🥩" {
            emojiDefinitionLabel.text = "Steak"
            birthLabel.text = "Birth Year: 2017"
            categoryLabel.text = "Category: Food"
        }
*/
    }

}
