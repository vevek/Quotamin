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
    var k: Int?
    var quotes = [QuoteData]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadQuotes()
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
        
        let quotes6 = QuoteData(quoteID: "6", quoteDetail: "DET6SSS", quoteAuthor: "ME6EEE")
        
        let quotes7 = QuoteData(quoteID: "7", quoteDetail: "DE7SSS", quoteAuthor: "M7EEE")
        
        let quotes8 = QuoteData(quoteID: "8", quoteDetail: "DETAILSSSS", quoteAuthor: "MEEEEE")
        
        let quotes9 = QuoteData(quoteID: "9", quoteDetail: "DETA2222SSS", quoteAuthor: "ME222E")
        
        let quotes10 = QuoteData(quoteID: "10", quoteDetail: "DE3SSSS", quoteAuthor: "MEEE33E")
        
        let quotes11 = QuoteData(quoteID: "11", quoteDetail: "DET44444S", quoteAuthor: "ME4444E")
        
        let quotes12 = QuoteData(quoteID: "12", quoteDetail: "DET5555SSSS", quoteAuthor: "ME555EE")
        
        let quotes13 = QuoteData(quoteID: "13", quoteDetail: "DET6SSS", quoteAuthor: "ME6EEE")
        
        let quotes14 = QuoteData(quoteID: "14", quoteDetail: "DE7SSS", quoteAuthor: "M7EEE")
        
        quotes += [quotes1, quotes2, quotes3, quotes4, quotes5, quotes6, quotes7, quotes8, quotes9, quotes10, quotes11, quotes12, quotes13, quotes14]
        
    }

    // MARK: END QUOTE DATA LOAD
    
    
    // MARK: Actions
    
    @IBAction func newQuoteButtonPress(sender: UIButton) {
        k = random() % 10; // Generate random number from 0 to 10
        
        
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

        
    }
    

    
    // MARK: Memory Warning Received
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

