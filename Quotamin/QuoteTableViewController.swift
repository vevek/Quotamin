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
        
        quotes += [quotes1, quotes2, quotes3, quotes4, quotes5, quotes6, quotes7, quotes8, quotes9, quotes10, quotes11, quotes12, quotes13, quotes14]
        
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
