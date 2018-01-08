//
//  ChannelViewController.swift
//  Smack
//
//  Created by offline on 01/01/2018.
//  Copyright © 2018 JoP. All rights reserved.
//

import UIKit

class ChannelViewController: UIViewController {

    // Outlets
    @IBOutlet weak var loginBtn: UIButton!
    
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }
    
    @IBAction func loginBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN_VIEW_CONTROLLER, sender: nil)
    }
}
