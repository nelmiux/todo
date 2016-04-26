//
//  RequestNotificationTableViewCell.swift
//  todo
//
//  Created by mac on 3/1/16.
//  Copyright © 2016 cs378. All rights reserved.
//

import UIKit

class RequestNotificationTableViewCell: UITableViewCell {
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var type: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func onClickAccept(sender: AnyObject) {
        print("Clicked accept")
    }
    
    @IBAction func onClickReject(sender: AnyObject) {
        print("Clicked reject")
    }
    
    @IBAction func onClickContact(sender: AnyObject) {
        print("Clicked contact")
    }
    
}
