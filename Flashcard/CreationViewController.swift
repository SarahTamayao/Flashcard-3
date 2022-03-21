//
//  CreationViewController.swift
//  Flashcard
//
//  Created by Madison DeGrezia on 3/12/22.
//

import UIKit

class CreationViewController: UIViewController {
    
    var flashcardsController: ViewController!

    @IBOutlet weak var questionTextField: UITextField!
    
    @IBOutlet weak var answerTextField: UITextField!
    
    @IBOutlet weak var ExtraAnswerField1: UITextField!
    
    @IBOutlet weak var ExtraAnswerField2: UITextField!
    
    var initialQuestion: String?
    var initialAnswer : String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        questionTextField.text = initialQuestion
        
        answerTextField.text = initialAnswer
    }
    
    @IBAction func didTapOnCancel(_ sender: Any) {
        dismiss(animated: true)
        
    }
    @IBAction func didTapOnDone(_ sender: Any) {
        let questionText = questionTextField.text
        
        let answerText = answerTextField.text
        
        let extraAnswer1 = ExtraAnswerField1.text
        
        let extraAnswer2 = ExtraAnswerField2.text!
        
        if questionText == nil || answerText == nil || questionText!.isEmpty || answerText!.isEmpty {
            // show error
            let alert = UIAlertController(title: "Missing text", message: "You need to enter both a question and an answer", preferredStyle:.alert)
            
            present(alert, animated: true)
            
            let okAction = UIAlertAction(title: "Ok", style: .default)
            alert.addAction(okAction)
        } else {
            // See if it's existing
            var isExisting = false
            if initialQuestion != nil {
                isExisting = true
            }
        
            flashcardsController.updateFlashcard(question: questionText!, answer: answerText!, extraAnswer1: extraAnswer1!, extraAnswer2: extraAnswer2, isExisting: isExisting)
        
        dismiss(animated: true)
        }
        
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
