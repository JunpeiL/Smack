//
//  CreateAccountViewController.swift
//  Smack
//
//  Created by offline on 07/01/2018.
//  Copyright © 2018 JoP. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func closeBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND_TO_CHANNEL_VIEW_CONTROLLER, sender: nil)
    }
}
