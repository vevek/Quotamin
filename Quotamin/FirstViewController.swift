//
//  FirstViewController.swift
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


class FirstViewController: UIViewController {
    
    // MARK: Properties
    @IBOutlet weak var newQuoteButton: UIButton!
    @IBOutlet weak var newQuoteTextLabel: UILabel!
    @IBOutlet weak var newQuoteAuthorLabel: UILabel!
    var randomQuoteSelector: Int?
    var randomColorSelector: Int?
    var quotes = [QuoteData]()
    @IBOutlet weak var TodayRandomTopLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rootRef = FIRDatabase.database().reference()
        
        if Reachability.isConnectedToNetwork() == true {
            
            TodayRandomTopLabel.text = "Today's Quote"
            
            
            rootRef.child("Quote").child("QuoteBody").observeSingleEventOfType(.Value, withBlock: { (snapshot) in
                // Get value
                self.newQuoteTextLabel.text = snapshot.value
                    as? String
            }) { (error) in
                print(error.localizedDescription)
            }
            
            
            rootRef.child("Quote").child("QuoteAuthor").observeSingleEventOfType(.Value, withBlock: { (snapshot) in
                // Get value
                self.newQuoteAuthorLabel.text = snapshot.value
                    as? String
            }) { (error) in
                print(error.localizedDescription)
            }
            
           
            
            
            
            loadQuotes()
        }
        else {
            TodayRandomTopLabel.text = "Random Quotes"
            loadQuotes()
            newQuoteTextLabel.text = "Press the button!"
            newQuoteAuthorLabel.text = "MOTIVATION AWAITS"
        }
        
        
        
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
    
    // MARK: START QUOTE DATA LOAD
    func loadQuotes(){
        let quotes1 = QuoteData(quoteID: "1", quoteDetail: "It's not who I am underneath. But what I do that defines me.", quoteAuthor: "Batman")
        
        let quotes2 = QuoteData(quoteID: "2", quoteDetail: "Courage, dear heart.", quoteAuthor: "C.S Lewis")
        
        let quotes3 = QuoteData(quoteID: "3", quoteDetail: "Look at the stars and not at your feet. Be curious.", quoteAuthor: "Stephen Hawking")
        
        let quotes4 = QuoteData(quoteID: "4", quoteDetail: "May my heart be kind, my mind fierce, and my spirit brave.", quoteAuthor: "Kate Forsyth")
        
        let quotes5 = QuoteData(quoteID: "5", quoteDetail: "No matter what anybody tells you, words and ideas can change the world. ", quoteAuthor: "Dead Poets Society")
        
        let quotes6 = QuoteData(quoteID: "6", quoteDetail: "Peace cannot be kept by force; It can only be achieved by understanding.", quoteAuthor: "Albert Einstein")
        
        let quotes7 = QuoteData(quoteID: "7", quoteDetail: "In three words I can sum up everything I have learned about life: 'It Goes On'", quoteAuthor: "Robert Frost")
        
        let quotes8 = QuoteData(quoteID: "8", quoteDetail: "You are not entitled to your opinion. You are entitled to your informed opinion. No one is entitled to be ignorant.", quoteAuthor: "Harlan Ellison")
        
        let quotes9 = QuoteData(quoteID: "9", quoteDetail: "The secret of genius is to carry the spirit of the child into old age, which means never losing your enthusiasm.", quoteAuthor: "Aldous Huxley")
        
        let quotes10 = QuoteData(quoteID: "10", quoteDetail: "Many people will walk in and out of your life, but only true friends will leave footprints in your heart.", quoteAuthor: "Eleanor Roosevelt")
        
        let quotes11 = QuoteData(quoteID: "11", quoteDetail: "When you see a person without a smile, give them one of yours.", quoteAuthor: "Zig Ziglar")
        
        let quotes12 = QuoteData(quoteID: "12", quoteDetail: "In order to move forward we have to leave behind our old way of thinking.", quoteAuthor: "Anonymous")
        
        let quotes13 = QuoteData(quoteID: "13", quoteDetail: "Be yourself. Everyone else is already taken.", quoteAuthor: "Oscar Wilde")
        
        let quotes14 = QuoteData(quoteID: "14", quoteDetail: "Change is the essence of life; be willing to surrender what you are for what you could become.", quoteAuthor: "Reinhold Niebuhr")
        
        let quotes15 = QuoteData(quoteID: "15", quoteDetail: "You can feel sore tomorrow or you can feel sorry tomorrow. You choose.", quoteAuthor: "Anonymous")
        
        let quotes16 = QuoteData(quoteID: "16", quoteDetail: "When I was able to get down the road a ways and look back, I realized success is 90% perseverance. The key is to stay in the game.", quoteAuthor: "Trevor Rees-Jones")
        
        let quotes17 = QuoteData(quoteID: "17", quoteDetail: "Whatever you are, be a good one.", quoteAuthor: "Abraham Lincoln")
        
        let quotes18 = QuoteData(quoteID: "18", quoteDetail: "If you dream it, you can do it.", quoteAuthor: "Walt Disney")
        
        let quotes19 = QuoteData(quoteID: "19", quoteDetail: "Never, never, never give up.", quoteAuthor: "Winston Churchill")
        
        let quotes20 = QuoteData(quoteID: "20", quoteDetail: "Don’t wait. The time will never be just right.", quoteAuthor: "Napoleon Hill")
        
        let quotes21 = QuoteData(quoteID: "21", quoteDetail: "If not us, who? If not now, when?", quoteAuthor: "John F. Kennedy")
        
        let quotes22 = QuoteData(quoteID: "22", quoteDetail: "Everything you can imagine is real.", quoteAuthor: "Pablo Picasso")
        
        
        let quotes23 = QuoteData(quoteID: "23", quoteDetail: "I can, therefore I am.", quoteAuthor: "Simone Weil")
        
        
        let quotes24 = QuoteData(quoteID: "24", quoteDetail: "Remember no one can make you feel inferior without your consent.", quoteAuthor: "Eleanor Roosevelt")
        
        
        let quotes25 = QuoteData(quoteID: "25", quoteDetail: "Turn your wounds into wisdom.", quoteAuthor: "Oprah Winfrey")
        
        
        let quotes26 = QuoteData(quoteID: "26", quoteDetail: "Wherever you go, go with all your heart.", quoteAuthor: "Confucius")
        
        
        let quotes27 = QuoteData(quoteID: "27", quoteDetail: "Do what you can, with what you have, where you are.", quoteAuthor: "Theodore Roosevelt")
        
        
        let quotes28 = QuoteData(quoteID: "28", quoteDetail: "Hope is a waking dream.", quoteAuthor: "Aristotle")
        
        
        let quotes29 = QuoteData(quoteID: "29", quoteDetail: "Action is the foundational key to all success.", quoteAuthor: "Pablo Picasso")
        
        
        let quotes30 = QuoteData(quoteID: "30", quoteDetail: "Do one thing every day that scares you.", quoteAuthor: "Eleanor Roosevelt")
        
        let quotes31 = QuoteData(quoteID: "31", quoteDetail: "You must do the thing you think you cannot do.", quoteAuthor: "Eleanor Roosevelt")
        
        let quotes32 = QuoteData(quoteID: "32", quoteDetail: "Don’t regret the past, just learn from it.", quoteAuthor: "Ben Ipock")
        
        let quotes33 = QuoteData(quoteID: "33", quoteDetail: "Believe you can and you’re halfway there.", quoteAuthor: "Theodore Roosevelt")
        
        let quotes34 = QuoteData(quoteID: "34", quoteDetail: "Live what you love.", quoteAuthor: "Jo Deurbrouck")
        
        let quotes35 = QuoteData(quoteID: "35", quoteDetail: "The power of imagination makes us infinite.", quoteAuthor: "John Muir")
        
        let quotes36 = QuoteData(quoteID: "36", quoteDetail: "Eighty percent of success is showing up.", quoteAuthor: "Woody Allen")
        
        let quotes37 = QuoteData(quoteID: "37", quoteDetail: "To be the best, you must be able to handle the worst.", quoteAuthor: "Wilson Kanadi")
        
        let quotes38 = QuoteData(quoteID: "38", quoteDetail: "A jug fills drop by drop.", quoteAuthor: "Buddha")
        
        let quotes39 = QuoteData(quoteID: "39", quoteDetail: "The best way out is always through.", quoteAuthor: "Robert Frost")
        
        let quotes40 = QuoteData(quoteID: "40", quoteDetail: "If you have never failed you have never lived.", quoteAuthor: "Anonymous")
        
        let quotes41 = QuoteData(quoteID: "41", quoteDetail: "Hope is the heartbeat of the soul.", quoteAuthor:"Michelle Horst")
        
        let quotes42 = QuoteData(quoteID: "42", quoteDetail: "Ever tried. Ever failed. No matter. Try Again. Fail again. Fail better.", quoteAuthor: "Samuel Beckett")
        
        let quotes43 = QuoteData(quoteID: "43", quoteDetail: "All you need is love.", quoteAuthor: "John Lennon")
        
        let quotes44 = QuoteData(quoteID: "44", quoteDetail: "It does not matter how slowly you go as long as you do not stop.", quoteAuthor: "Confucius")
        
        let quotes45 = QuoteData(quoteID: "45", quoteDetail: "It is never too late to be what you might have been.", quoteAuthor: "Reinhold Niebuhr")
        
        let quotes46 = QuoteData(quoteID: "46", quoteDetail: "We become what we think about.", quoteAuthor: "Earl Nightingale")
        
        let quotes47 = QuoteData(quoteID: "47", quoteDetail: "An obstacle is often a stepping stone.", quoteAuthor: "Prescott Bush")
        
        let quotes48 = QuoteData(quoteID: "48", quoteDetail: "Dream big and dare to fail.", quoteAuthor: "Norman Vaughan")
        
        let quotes49 = QuoteData(quoteID: "49", quoteDetail: "Men are born to succeed, not fail.", quoteAuthor: "Henry David Thoreau")
        
        let quotes50 = QuoteData(quoteID: "50", quoteDetail: "May you live every day of your life.", quoteAuthor: "Jonathan Swift")
        
        
        quotes += [quotes1, quotes2, quotes3, quotes4, quotes5, quotes6, quotes7, quotes8, quotes9, quotes10, quotes11, quotes12, quotes13, quotes14, quotes15, quotes16, quotes17, quotes18, quotes19, quotes20, quotes21, quotes22, quotes23, quotes24, quotes25, quotes26, quotes27, quotes28, quotes29, quotes30, quotes31, quotes32, quotes33, quotes34, quotes35, quotes36, quotes37, quotes38, quotes39, quotes40, quotes41, quotes42,  quotes43, quotes44, quotes45, quotes46, quotes47, quotes48, quotes49, quotes50]
        
    }
    // MARK: END QUOTE DATA LOAD
    
    
    
    // MARK: Actions
    

    
    @IBAction func newQuoteButtonPress(sender: UIButton) {
        randomQuoteSelector = random() % 50; // Generate random number from 0 to 14
        randomColorSelector = random() % 13; // Generate random number from 0 to 10
        
        TodayRandomTopLabel.text = "Random Quotes"
        newQuoteTextLabel.text = quotes[randomQuoteSelector!].quoteDetail
        newQuoteAuthorLabel.text = quotes[randomQuoteSelector!].quoteAuthor
        
        
        

        
        
        
        

        
    }
    
    // MARK: Button Color Loader
    func buttonColorSelector(sender: UIButton) {
    
        if(randomColorSelector == 0){
            sender.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        }
        else if(randomColorSelector == 1){
            sender.setTitleColor(UIColor.brownColor(), forState: UIControlState.Normal)
        }
        else if(randomColorSelector == 2){
            sender.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        }
        else if(randomColorSelector == 3){
            sender.setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
        }
        else if(randomColorSelector == 4){
            sender.setTitleColor(UIColor.yellowColor(), forState: UIControlState.Normal)
        }
        else if(randomColorSelector == 5){
            sender.setTitleColor(UIColor.purpleColor(), forState: UIControlState.Normal)
        }
        else if(randomColorSelector == 6){
            sender.setTitleColor(UIColor.cyanColor(), forState: UIControlState.Normal)
        }
        else if(randomColorSelector == 7){
            sender.setTitleColor(UIColor.magentaColor(), forState: UIControlState.Normal)
        }
        else if(randomColorSelector == 8){
            sender.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        }
        else if(randomColorSelector == 9){
            sender.setTitleColor(UIColor.grayColor(), forState: UIControlState.Normal)
        }
        else if(randomColorSelector == 10){
            sender.setTitleColor(UIColor.lightGrayColor(), forState: UIControlState.Normal)
        }
        else if(randomColorSelector == 11){
            sender.setTitleColor(UIColor.orangeColor(), forState: UIControlState.Normal)
        }
        
    }
    

    
    // MARK: Memory Warning Received
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

