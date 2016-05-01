//
//  Settings.swift
//  Quotamin
//
//  Created by Vevek Selvam on 2/5/16.
//  Copyright © 2016 Vevek Selvam. All rights reserved.
//


import UIKit
import Firebase

class SettingsViewController: UIViewController {
    
    // MARK: Properties
    
    
    @IBOutlet weak var QuoteBodyTextField: UITextField!
    @IBOutlet weak var QuoteAuthorTextField: UITextField!
    @IBOutlet weak var SendUpdateQuote: UIButton!
    var A: String!
    var B: String!
    
    
    
    var refQuoteBody2 = Firebase(url: "https://dazzling-inferno-8467.firebaseio.com/Quote/QuoteBody/")
    var refQuoteAuthor2 = Firebase(url: "https://dazzling-inferno-8467.firebaseio.com/Quote/QuoteAuthor/")
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     
        
        
    }

    
    // MARK: Memory Warning Received
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func QuoteSendButton(sender: AnyObject) {
        
        A = QuoteBodyTextField.text
        B = QuoteAuthorTextField.text
        refQuoteBody2.setValue(QuoteBodyTextField?.text)
        refQuoteAuthor2.setValue(QuoteAuthorTextField?.text)
    }
    
}

