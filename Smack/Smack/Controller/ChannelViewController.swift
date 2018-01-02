//
//  ChannelViewController.swift
//  Smack
//
//  Created by offline on 01/01/2018.
//  Copyright © 2018 JoP. All rights reserved.
//

import UIKit

class ChannelViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }
}
