//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Zeba Khan on 4/26/18.
//  Copyright © 2018 Zeba Khan. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {

    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojis = createEmojis()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = "\(emoji.theEmoji) - \(emoji.releaseDate)"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "ourSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       let emojiDefVC = segue.destination as! EmojiDefinitionViewController
        emojiDefVC.emoji = sender as! Emoji
        
    }
 
    func createEmojis() -> [Emoji] {
        let smiley = Emoji()
        smiley.theEmoji = "😂"
        smiley.defEmoji = "Laughing out loud"
        smiley.releaseDate = 2018
        smiley.category = "Faces"
        
        let crying = Emoji()
        crying.theEmoji = "😭"
        crying.defEmoji = "Crybaby"
        crying.releaseDate = 2011
        crying.category = "Faces"
        
        return[smiley, crying]
    }
}
