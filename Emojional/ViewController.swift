//
//  ViewController.swift
//  Emojional
//
//  Created by Apple on 7/11/19.
//  Copyright © 2019 KWK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let emojis = ["🍜" : "Ramen", "🥐" : "Croissant", "🍭" : "Sweet", "🍔" : "Burgers", "🍤" : "Shrimp"]
    
    let messages = ["Ramen" : "RAMEN-SAN", "Croissant": "La Fournette", "Sweet" : "Dylan's Candy Bar", "Burgers": "Good Stuff Eatery Chicago", "Shrimp" : "Crab Spice"]
    
    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text
        let Food = messages[emojis[selectedEmotion!]!]
        
        let alertController = UIAlertController(title: emojis[selectedEmotion!], message: Food, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil));        present(alertController, animated: true, completion: nil)    }
    
       override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.    }
    }
}
