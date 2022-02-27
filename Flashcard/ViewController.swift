//
//  ViewController.swift
//  Flashcard
//
//  Created by Madison DeGrezia on 2/26/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var frontLabel: UILabel!
    @IBOutlet weak var backLabel: UILabel!
    @IBOutlet weak var card: UIView!
    
    @IBOutlet weak var btnOption1: UIButton!
    
    @IBOutlet weak var btnOption2: UIButton!
    
    @IBOutlet weak var btnOption3: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        card.layer.cornerRadius = 20.0
        card.layer.shadowRadius = 15.0
        card.layer.shadowOpacity = 0.2
        
        frontLabel.clipsToBounds = true
        backLabel.clipsToBounds = true
        frontLabel.layer.cornerRadius = 20.0
        backLabel.layer.cornerRadius = 20.0
        
        btnOption1.layer.cornerRadius = 20.0
        btnOption2.layer.cornerRadius = 20.0
        btnOption3.layer.cornerRadius = 20.0
        btnOption1.layer.borderWidth = 3.0
        btnOption2.layer.borderWidth = 3.0
        btnOption3.layer.borderWidth = 3.0
        btnOption1.layer.borderColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        btnOption2.layer.borderColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        btnOption3.layer.borderColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
                            
    }

    @IBAction func didTapOnFlashcard(_ sender: Any) {
        
        if frontLabel.isHidden == true {
            frontLabel.isHidden = false;
        } else {
            frontLabel.isHidden = true;
        }
    }
    
    @IBAction func didTapOption1(_ sender: Any) {
        btnOption1.isHidden = true
    }
    
    @IBAction func didTapOption2(_ sender: Any) {
        frontLabel.isHidden = true
    }
    
    @IBAction func didTapOption3(_ sender: Any) {
        btnOption3.isHidden = true
    }
    
}

