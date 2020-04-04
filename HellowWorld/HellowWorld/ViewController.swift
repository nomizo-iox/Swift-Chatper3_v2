//
//  ViewController.swift
//  HellowWorld
//
//  Created by Samuel F. Ademola on 4/3/20.
//  Copyright © 2020 Nomizo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessage(sender: UIButton) {
        // Initializing the dictionary
        let emojiTitle = ["😤": "I Am Sorry", "🤣": "Look At This", "🙄": "What Do You Think?", "😲": "2 Girls, 1 Cup"]
        let emojiResponse = ["😤": "Fuck Off", "🤣": "Laughing Out Loud", "🙄": "Lame Sauce", "😲": "What The Fuck?.."]

        let selectedButton = sender
        
        if let wordToLookup = selectedButton.titleLabel?.text {
            
            let emojiResponseMeaning = emojiResponse[wordToLookup]
            let emojiTitleMeaning = emojiTitle[wordToLookup]
            
            
            let alertController = UIAlertController(title: emojiTitleMeaning,
                                                    message: emojiResponseMeaning,
                                                    preferredStyle: UIAlertController.Style.alert)
            
            alertController.addAction(UIAlertAction(title: "Ok",
                                                    style: UIAlertAction.Style.default,
                                                    handler: nil))
            
            present(alertController, animated: true, completion: nil)
            
        }
    }
}

