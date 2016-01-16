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
    @IBOutlet weak var newQuoteAuthorLabel: UILabel!
    var randomQuoteSelector: Int?
    var randomColorSelector: Int?
    var quotes = [QuoteData]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadQuotes()
        newQuoteTextLabel.text = "Press the button!"
        newQuoteAuthorLabel.text = "MOTIVATION AWAITS"
        
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
            
            quotes += [quotes1, quotes2, quotes3, quotes4, quotes5, quotes6, quotes7, quotes8, quotes9, quotes10, quotes11, quotes12, quotes13, quotes14]
            
        }
    // MARK: END QUOTE DATA LOAD
    
    
    
    // MARK: Actions
    

    
    @IBAction func newQuoteButtonPress(sender: UIButton) {
        randomQuoteSelector = random() % 14; // Generate random number from 0 to 14
        randomColorSelector = random() % 13; // Generate random number from 0 to 10
        
        newQuoteTextLabel.text = quotes[randomQuoteSelector!].quoteDetail
        newQuoteAuthorLabel.text = quotes[randomQuoteSelector!].quoteAuthor
        
        
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


        
        /*
        
        if(k == 0){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 1){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 2){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 3){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 4){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 5){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 6){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 7){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 8){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 9){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 10){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 11){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 12){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 13){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 14){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 15){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 16){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 17){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 18){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 19){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 20){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 21){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 22){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 23){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 24){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 25){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 26){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 27){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 28){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 29){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 30){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 31){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 32){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 33){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 34){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 35){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 36){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 37){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 38){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 39){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        else if(k == 40){
            newQuoteTextLabel.text = quotes[k!].quoteDetail
            newQuoteAuthorLabel.text = quotes[k!].quoteAuthor
        }
        
        */

        
    }
    

    
    // MARK: Memory Warning Received
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

