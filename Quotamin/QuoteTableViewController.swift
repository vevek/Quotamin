//
//  QuoteTableViewController.swift
//  Quotamin
//
//  Created by Vevek Selvam on 7/1/16.
//  Copyright © 2016 Vevek Selvam. All rights reserved.
//

import UIKit

class QuoteTableViewController: UITableViewController {

    
    // MARK: Properties
    
    var quotes = [QuoteData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        loadQuotes()
    }
    
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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return quotes.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "QuoteTableViewCell"
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! QuoteTableViewCell
        
        let quote = quotes[indexPath.row]

        // Configure the cell...
        
        cell.quoteIDLabel.text = quote.quoteID
        cell.quoteDetailLabel.text = quote.quoteDetail
        cell.quoteAuthorLabel.text = quote.quoteAuthor

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
