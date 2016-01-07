//
//  FirstViewController.swift
//  Quotamin
//
//  Created by Vevek Selvam on 14/10/15.
//  Copyright © 2015 Vevek Selvam. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    // MARK: Properties
    @IBOutlet weak var newQuoteButton: UIButton!
    @IBOutlet weak var newQuoteTextLabel: UILabel!
    var k: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
  
    /*
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        
        /*
        //Alert Code
        let alertController = UIAlertController(title: "Welcome!", message:
        "Enjoy using Quotamin!", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
        */
        
    }
    */
    
    // MARK: Actions
    
    @IBAction func newQuoteButtonPress(sender: UIButton) {
        k = random() % 10; // Generate random number from 0 to 10
        
        
        if(k == 0){
            newQuoteTextLabel.text = "Default Text"
        }
        else if(k == 0){
            newQuoteTextLabel.text = "Default Text"
        }
        else if(k == 0){
            newQuoteTextLabel.text = "Default Text"
        }
        else if(k == 0){
            newQuoteTextLabel.text = "Default Text"
        }
        else if(k == 0){
            newQuoteTextLabel.text = "Default Text"
        }
        else if(k == 0){
            newQuoteTextLabel.text = "Default Text"
        }
        else if(k == 0){
            newQuoteTextLabel.text = "Default Text"
        }
        else if(k == 0){
            newQuoteTextLabel.text = "Default Text"
        }
        else if(k == 0){
            newQuoteTextLabel.text = "Default Text"
        }
        else if(k == 0){
            newQuoteTextLabel.text = "Default Text"
        }
        else if(k == 0){
            newQuoteTextLabel.text = "Default Text"
        }
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

