//
//  ViewController.swift
//  Word Reverser for iOS9
//
//  Created by Nurulazrad Bin Murad on 10/11/16.
//  Copyright © 2016 Herbalife Product. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var lblReverseWord: UILabel!
    @IBOutlet weak var lblWordCount: UILabel!
    
    var wordData = ""
    var reversedWord = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnReverse(sender: UIButton) {
        reverseTheWord()
    }
    
    @IBAction func btnClear(sender: UIButton) {
        clear()
    }

    func reverseTheWord() {
        wordData = txtName.text!
        reversedWord = String(wordData.characters.reverse())
        
        countTheWord()
        printReversedWord()
    }
    
    func countTheWord() {
        lblWordCount.text = "\(String(wordData.characters.count)) char(s)"
    }
    
    func clear() {
        txtName.text = ""
        lblReverseWord.text = "Word"
        lblWordCount.text = "0"
    }
    
    func printReversedWord() {
        lblReverseWord.text = "\(reversedWord.lowercaseString)"
    }
    
    func hideKeyboard() {
        txtName.resignFirstResponder()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        hideKeyboard()
    }

}

