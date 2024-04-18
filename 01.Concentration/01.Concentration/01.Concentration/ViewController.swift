//
//  ViewController.swift
//  01.Concentration
//
//  Created by cradmin on 19/2/24.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    var emojiChoices: Array<String> = ["🎃", "👻", "👻", "💀", "🧹", "🍭", "🎃", "🍭", "💀", "🧌", "🧹", "🧌"]

    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.firstIndex(of: sender) {
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print("Chosen card was not in the cardButtons")
        }
    }
    
    
    func flipCard(withEmoji emoji: String, on button: UIButton){
        print("flipCard(withEmoji: \(emoji))")
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = UIColor.systemOrange
        } else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = UIColor.white
        }
    }
}

