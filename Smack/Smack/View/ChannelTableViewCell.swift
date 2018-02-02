//
//  ChannelTableViewCell.swift
//  Smack
//
//  Created by offline on 31/01/2018.
//  Copyright © 2018 JoP. All rights reserved.
//

import UIKit

class ChannelTableViewCell: UITableViewCell {

    // Outlets
    @IBOutlet weak var channelName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if selected {
            self.layer.backgroundColor = UIColor(white: 1, alpha: 0.2).cgColor
        } else {
            self.layer.backgroundColor = UIColor.clear.cgColor
        }
        // Configure the view for the selected state
    }
    
    func configureCell(channel : Channel) {
        let title = channel.name ?? ""
        channelName.text = "#\(title)"
    }

}
