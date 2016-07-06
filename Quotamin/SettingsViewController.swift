//
//  Settings.swift
//  Quotamin
//
//  Created by Vevek Selvam on 2/5/16.
//  Copyright © 2016 Vevek Selvam. All rights reserved.
//


import UIKit
import Firebase
import FirebaseAnalytics

class SettingsViewController: UIViewController {
    
    // MARK: Properties
    
    
    
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FIRAnalytics.logEventWithName(kFIREventSelectContent, parameters: [
            kFIRParameterContentType:"SettingsTabOpened",
            kFIRParameterItemID:"4"
            ])
     
        
        
    }

    
    // MARK: Memory Warning Received
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}