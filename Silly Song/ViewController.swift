//
//  ViewController.swift
//  Silly Song
//
//  Created by Aayush Kapoor on 06/09/16.
//  Copyright © 2016 Aayush Kapoor. All rights reserved.
//

import UIKit

func shortNameFromName(fullName: String) -> String {

    let vowelSet = NSCharacterSet(charactersInString: "aeiou")

    if let firstVowelRange = fullName.lowercaseString.rangeOfCharacterFromSet(vowelSet) {
        return fullName.lowercaseString.substringFromIndex(firstVowelRange.startIndex)
    }

    return fullName.lowercaseString
}

let bananaFanaTemplate = [
    "<FULL_NAME>, <FULL_NAME>, Bo B<SHORT_NAME>",
    "Banana Fana Fo F<SHORT_NAME>",
    "Me My Mo M<SHORT_NAME>",
    "<FULL_NAME>"
].joinWithSeparator("\n")

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var lyricsView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func reset(sender: AnyObject) {
    }

    @IBAction func displayLyrics(sender: AnyObject) {
    }

}

