//
//  ViewController.swift
//  Word Reverser for iOS9
//
//  Created by Nurulazrad Bin Murad on 10/11/16.
//  Copyright © 2016 Herbalife Product. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var lblReverseWord: UILabel!
    
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
    }

    func reverseTheWord() {
        wordData = txtName.text!
        reversedWord = String(wordData.characters.reverse())
        
        printReversedWord()
    }
    
    func clear() {
    }
    
    func printReversedWord() {
        lblReverseWord.text = "\(reversedWord.lowercaseString)"
    }

}

