//
//  AboutViewController.swift
//  Quotamin
//
//  Created by Vevek Selvam on 25/6/16.
//  Copyright © 2016 Vevek Selvam. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAnalytics

class AboutViewController: UIViewController {
    
    // MARK: Properties
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FIRAnalytics.logEventWithName(kFIREventSelectContent, parameters: [
            kFIRParameterContentType:"AboutTabOpened",
            kFIRParameterItemID:"5"
            ])
        
        
        
    }
    
    
    // MARK: Memory Warning Received
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}