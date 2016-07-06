//
//  ConnectViewController.swift
//  Quotamin
//
//  Created by Vevek Selvam on 27/6/16.
//  Copyright © 2016 Vevek Selvam. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAnalytics
import FirebaseStorage

struct ChatMessage {
    var name: String!
    var message: String!
}

class ConnectViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var messageTextField: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    
    // var tableView: UITableView  =   UITableView()

    @IBOutlet weak var tableView: UITableView!
    
    // Useful app properties
    var messages: [ChatMessage]!
    var username: String!
    
    // Firebase services
    var database: FIRDatabase!
    var auth: FIRAuth!
    var storage: FIRStorage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Initialize send button
        sendButton.addTarget(self,
                             action: #selector(sendMessage),
                             forControlEvents: .TouchUpInside)
        
        
        // Initialize other properties
        messages = []
        username = "iOS"
        
        // Initialize UITableView
        tableView.delegate = self
        tableView.dataSource = self
        let nib = UINib(nibName: "ChatMessageTableViewCell", bundle: nil)
        tableView.registerNib(nib, forCellReuseIdentifier: "chatMessageCell")
        
        // Initialize Database, Auth, Storage
        database = FIRDatabase.database()
        auth = FIRAuth.auth()
        storage = FIRStorage.storage()
        
        // Listen for when child nodes get added to the collection
        let chatRef = database.reference().child("chat")
        chatRef.observeEventType(.ChildAdded, withBlock: { (snapshot) -> Void in
            // Get the chat message from the snapshot and add it to the UI
            let data = snapshot.value as! Dictionary<String, String>
            guard let name = data["name"] as String! else { return }
            guard let message = data["message"] as String! else { return }
            let chatMessage = ChatMessage(name: name, message: message)
            self.addMessage(chatMessage)
        })
        

        
    }
    
    
    
    // Send a chat message
    func sendMessage(sender: AnyObject) {
        // Create chat message
        let chatMessage = ChatMessage(name: self.username, message: messageTextField.text!)
        messageTextField.text = ""
        
        // Create a reference to our chat message
        let chatRef = database.reference().child("chat")
        
        // Push the chat message to the database
        chatRef.childByAutoId().setValue(["name": chatMessage.name, "message": chatMessage.message])
    }
    

    

    

    
    func addMessage(var chatMessage: ChatMessage) {
        // Handle remote image messages
        // Handle regular messages
        
        self.messages.append(chatMessage)
        self.tableView.reloadData()
        self.scrollToBottom()
        
    }
    
    func scrollToBottom() {
        if (self.messages.count > 8) {
            let bottomOffset = CGPoint(x: 0, y: tableView.contentSize.height - tableView.bounds.size.height)
            tableView.setContentOffset(bottomOffset, animated: true)
        }
    }
    
    // pragma mark - UITableViewDataSource overrides
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("chatMessageCell", forIndexPath: indexPath) as! ChatMessageTableViewCell
        let chatMessage = messages[indexPath.row]
        cell.nameLabel.text = chatMessage.name
        cell.messageLabel.text = chatMessage.message
        return cell
    }
    
    // pragma mark - UITableViewDelegate overrides
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        let chatMessage = messages[indexPath.row]
            return 58.0
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    // Create a chat message from a FIRDataSnapshot
    func chatMessageFromSnapshot(snapshot: FIRDataSnapshot) -> ChatMessage? {
        let data = snapshot.value as! Dictionary<String, String>
        guard let name = data["name"] as String! else { return nil }
        guard let message = data["message"] as String! else { return nil }
        let chatMessage = ChatMessage(name: name, message: message)
        return chatMessage
    }



}