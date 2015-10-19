//
//  FirstViewController.swift
//  Quotamin
//
//  Created by Vevek Selvam on 14/10/15.
//  Copyright © 2015 Vevek Selvam. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        
//        var dateComp:NSDateComponents = NSDateComponents()
//        dateComp.year = 2014;
//        dateComp.month = 06;
//        dateComp.day = 09;
//        dateComp.hour = 15;
//        dateComp.minute = 26;
//        dateComp.timeZone = NSTimeZone.systemTimeZone()
//        
//        var calender:NSCalendar = NSCalendar(calendarIdentifier: NSGregorianCalendar)!
//        var date:NSDate = calender.dateFromComponents(dateComp)!
//        
        
        var notification:UILocalNotification = UILocalNotification()
        notification.category = "FIRST_CATEGORY"
        notification.alertBody = "Hi, I am a notification"
//        notification.fireDate = date
        
        UIApplication.sharedApplication().scheduleLocalNotification(notification)
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

