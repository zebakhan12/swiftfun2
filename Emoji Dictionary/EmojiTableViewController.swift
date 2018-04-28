//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Zeba Hashimi on 4/26/18.
//  Copyright © 2018 Zeba Khan. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {

    var emojis = ["😂", "😭", "😁", "🤞", "😉"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows, tells you how many rows there are
        return emojis.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        // Configure the cell...
       
        cell.textLabel?.text = emojis[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ourSegue", sender: nil)
    }
    


}
