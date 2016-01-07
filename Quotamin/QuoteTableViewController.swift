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
        
        let quotes2 = QuoteData(quoteID: "2", quoteDetail: "DETA2222SSS", quoteAuthor: "ME222E")
        
        let quotes3 = QuoteData(quoteID: "3", quoteDetail: "DE3SSSS", quoteAuthor: "MEEE33E")
        
        let quotes4 = QuoteData(quoteID: "4", quoteDetail: "DET44444S", quoteAuthor: "ME4444E")
        
        let quotes5 = QuoteData(quoteID: "5", quoteDetail: "DET5555SSSS", quoteAuthor: "ME555EE")
        
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
