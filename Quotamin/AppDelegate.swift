//
//  AppDelegate.swift
//  Quotamin
//
//  Created by Vevek Selvam on 14/10/15.
//  Copyright © 2015 Vevek Selvam. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import FirebaseMessaging
import FirebaseAnalytics
import FirebaseInstanceID
import CoreData



@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    enum QuickAction: String {
        case OpenHome = "OpenHome"
        case OpenQuoteList = "OpenQuoteList"
        case OpenSettings = "OpenSettings"
        init?(fullIdentifier: String) {
            guard let shortcutIdentifier =
                fullIdentifier.componentsSeparatedByString(".").last else {
                    return nil
            }
            self.init(rawValue: shortcutIdentifier)
        }
    }

    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        
        // Register for remote notifications
        if #available(iOS 8.0, *) {
            let settings: UIUserNotificationSettings =
                UIUserNotificationSettings(forTypes: [.Alert, .Badge, .Sound], categories: nil)
            application.registerUserNotificationSettings(settings)
            application.registerForRemoteNotifications()
        } else {
            // Fallback
            let types: UIRemoteNotificationType = [.Alert, .Badge, .Sound]
            application.registerForRemoteNotificationTypes(types)
        }
        
        
        
        FIRApp.configure()
        
        
        // Add observer for InstanceID token refresh callback.
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(self.tokenRefreshNotificaiton), name:kFIRInstanceIDTokenRefreshNotification, object: nil)
        
        
        return true
    }
    
    
    // MARK: QUICK ACTIONS START
    
    @available(iOS 9.0, *)
    func application(application: UIApplication, performActionForShortcutItem
        shortcutItem: UIApplicationShortcutItem, completionHandler: (Bool) -> Void) {
        
        completionHandler(handleQuickAction(shortcutItem))
        
    }
    
    @available(iOS 9.0, *)
    private func handleQuickAction(shortcutItem: UIApplicationShortcutItem) -> Bool
    {
        let shortcutType = shortcutItem.type
        guard let shortcutIdentifier = QuickAction(fullIdentifier: shortcutType)
            else {
                return false
        }
        guard let tabBarController = window?.rootViewController as?
            UITabBarController else {
                return false
        }
        switch shortcutIdentifier {
        case .OpenHome:
            tabBarController.selectedIndex = 0
        case .OpenQuoteList:
            if let navController = tabBarController.viewControllers?[0] {
                let QuoteTableViewController = navController.childViewControllers[0]
                QuoteTableViewController.performSegueWithIdentifier("Bookmarks", sender:QuoteTableViewController)
            } else {
                return false
            }
        case .OpenSettings:
            tabBarController.selectedIndex = 1
        
        
        
        
        }
        return true
    }
    
    
    
    // MARK: QUICK ACTIONS END
    
    
    // [START refresh_token]
    func tokenRefreshNotificaiton(notification: NSNotification) {
        let refreshedToken = FIRInstanceID.instanceID().token()!
        print("InstanceID token: \(refreshedToken)")
        
        // Connect to FCM since connection may have failed when attempted before having a token.
        connectToFcm()
    }
    // [END refresh_token]
    

    
    
    
    // MARK: Receive Remote Notification START
    func application(application: UIApplication, didReceiveRemoteNotification userInfo: [NSObject : AnyObject],
                     fetchCompletionHandler completionHandler: (UIBackgroundFetchResult) -> Void) {
        // If you are receiving a notification message while your app is in the background,
        // this callback will not be fired till the user taps on the notification launching the application.
        // TODO: Handle data of notification
        
        // Print message ID.
        //print("Message ID: \(userInfo["gcm.message_id"]!)")
        
        // Print full message.
        // print("%@", userInfo)
        
    }
    

    

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
       
        //FIRMessaging.messaging().disconnect()
        //print("Disconnected from FCM.")
    }
    



    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        
        connectToFcm()
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


    // [START connect_to_fcm]
    func connectToFcm() {
        FIRMessaging.messaging().connectWithCompletion { (error) in
            if (error != nil) {
                print("Unable to connect with FCM. \(error)")
            } else {
                print("Connected to FCM.")
            }
        }
    }
    // [END connect_to_fcm]

    
    // MARK: - Core Data stack START
    
    lazy var applicationDocumentsDirectory: NSURL = {
        // The directory the application uses to store the Core Data store file. This code uses a directory named "com.appcoda.CoreDataDemo" in the application's documents Application Support directory.
        let urls = NSFileManager.defaultManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask)
        return urls[urls.count-1]
    }()
    
    lazy var managedObjectModel: NSManagedObjectModel = {
        // The managed object model for the application. This property is not optional. It is a fatal error for the application not to be able to find and load its model.
        let modelURL = NSBundle.mainBundle().URLForResource("Quotamin", withExtension: "momd")!
        return NSManagedObjectModel(contentsOfURL: modelURL)!
    }()
    
    lazy var persistentStoreCoordinator: NSPersistentStoreCoordinator = {
        // The persistent store coordinator for the application. This implementation creates and returns a coordinator, having added the store for the application to it. This property is optional since there are legitimate error conditions that could cause the creation of the store to fail.
        // Create the coordinator and store
        let coordinator = NSPersistentStoreCoordinator(managedObjectModel: self.managedObjectModel)
        let url = self.applicationDocumentsDirectory.URLByAppendingPathComponent("Quotamin.sqlite")
        var failureReason = "There was an error creating or loading the application's saved data."
        do {
            try coordinator.addPersistentStoreWithType(NSSQLiteStoreType, configuration: nil, URL: url, options: nil)
        } catch {
            // Report any error we got.
            var dict = [String: AnyObject]()
            dict[NSLocalizedDescriptionKey] = "Failed to initialize the application's saved data"
            dict[NSLocalizedFailureReasonErrorKey] = failureReason
            
            dict[NSUnderlyingErrorKey] = error as NSError
            let wrappedError = NSError(domain: "YOUR_ERROR_DOMAIN", code: 9999, userInfo: dict)
            // Replace this with code to handle the error appropriately.
            // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            NSLog("Unresolved error \(wrappedError), \(wrappedError.userInfo)")
            abort()
        }
        
        return coordinator
    }()
    
    lazy var managedObjectContext: NSManagedObjectContext = {
        // Returns the managed object context for the application (which is already bound to the persistent store coordinator for the application.) This property is optional since there are legitimate error conditions that could cause the creation of the context to fail.
        let coordinator = self.persistentStoreCoordinator
        var managedObjectContext = NSManagedObjectContext(concurrencyType: .MainQueueConcurrencyType)
        managedObjectContext.persistentStoreCoordinator = coordinator
        return managedObjectContext
    }()
    
    // MARK: - Core Data Saving support
    
    func saveContext () {
        if managedObjectContext.hasChanges {
            do {
                try managedObjectContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                NSLog("Unresolved error \(nserror), \(nserror.userInfo)")
                abort()
            }
        }
    }
    
    // MARK: - Core Data stack END
    
    
    // MARK: - Load Data START
    
    //START HERE MANNNNNNNN!!!!!!!!!!!!
    
    // MARK: - Load Data END
    
    // MARK: CSV Preloading START
    
    func parseCSV(contentsOfURL: NSURL, encoding: UInt, error: NSErrorPointer) -> [(quoteID: String, quoteDetail: String, quoteAuthor: String)]? {
        // Load the CSV file and parse it
        let delimiter = ","
        var items:[(quoteID:String, quoteDetail:String, quoteAuthor: String)]?
        
        if let data = NSData(contentsOfURL: contentsOfURL) {
            if let content = NSString(data: data, encoding: NSUTF8StringEncoding) {
                items = []
                let lines:[String] = content.componentsSeparatedByCharactersInSet(NSCharacterSet.newlineCharacterSet()) as [String]
                
                for line in lines {
                    var values:[String] = []
                    if line != "" {
                        // For a line with double quotes
                        // we use NSScanner to perform the parsing
                        if line.rangeOfString("\"") != nil {
                            var textToScan:String = line
                            var value:NSString?
                            var textScanner:NSScanner = NSScanner(string: textToScan)
                            while textScanner.string != "" {
                                
                                if (textScanner.string as NSString).substringToIndex(1) == "\"" {
                                    textScanner.scanLocation += 1
                                    textScanner.scanUpToString("\"", intoString: &value)
                                    textScanner.scanLocation += 1
                                } else {
                                    textScanner.scanUpToString(delimiter, intoString: &value)
                                }
                                
                                // Store the value into the values array
                                values.append(value as! String)
                                
                                // Retrieve the unscanned remainder of the string
                                if textScanner.scanLocation < textScanner.string.characters.count {
                                    textToScan = (textScanner.string as NSString).substringFromIndex(textScanner.scanLocation + 1)
                                } else {
                                    textToScan = ""
                                }
                                textScanner = NSScanner(string: textToScan)
                            }
                            
                            // For a line without double quotes, we can simply separate the string
                            // by using the delimiter (e.g. comma)
                        } else  {
                            values = line.componentsSeparatedByString(delimiter)
                        }
                        
                        // Put the values into the tuple and add it to the items array
                        let item = (quoteID: values[0], quoteDetail: values[1], quoteAuthor: values[2])
                        items?.append(item)
                    }
                }
            }
        }
        
        return items
    }
    
    //MARK: CSV Preloading END
    
    

    
}