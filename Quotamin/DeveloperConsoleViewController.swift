//
//  DeveloperConsoleViewController.swift
//  Quotamin
//
//  Created by Vevek Selvam on 25/6/16.
//  Copyright © 2016 Vevek Selvam. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class DeveloperConsoleViewController: UIViewController {
    
    // MARK: Properties
    
    
    @IBOutlet weak var QuoteBodyTextField: UITextField!
    @IBOutlet weak var QuoteAuthorTextField: UITextField!
    @IBOutlet weak var SendUpdateQuote: UIButton!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }
    
    
    // MARK: Memory Warning Received
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func QuoteSendButton(sender: AnyObject) {
        
        if Reachability.isConnectedToNetwork() == true {
            
            let rootRef = FIRDatabase.database().reference()
            
            rootRef.child("Quote").child("QuoteBody").setValue(QuoteBodyTextField.text)
            rootRef.child("Quote").child("QuoteAuthor").setValue(QuoteAuthorTextField.text)
            
            //Alert Code
            let alertController = UIAlertController(title: "SENT!", message:
                "Quote title and body uploaded!", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
            
            self.presentViewController(alertController, animated: true, completion: nil)
        }
        else {
            
            //Alert Code
            let alertController = UIAlertController(title: "FAILED!", message:
                "No internet connection!", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
            
            self.presentViewController(alertController, animated: true, completion: nil)
            
        }
        
    }
    
}

