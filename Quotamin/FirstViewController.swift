//
//  FirstViewController.swift
//  Quotamin
//
//  Created by Vevek Selvam on 14/10/15.
//  Copyright © 2015 Vevek Selvam. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    
    @IBOutlet weak var newQuoteButton: UIButton!
    @IBOutlet weak var newQuoteLabel: UILabel!
    
    override func viewDidLoad() {

        super.viewDidLoad()
        
        
    }
    
    @IBAction func newQuoteButtonPress(sender: UIButton) {
        newQuoteLabel.text = "Default Text"
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

