//
//  AddChannelViewController.swift
//  Smack
//
//  Created by offline on 01/02/2018.
//  Copyright © 2018 JoP. All rights reserved.
//

import UIKit

class AddChannelViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var channelTxt: UITextField!
    @IBOutlet weak var backgroundView: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func createChannelPressed(_ sender: Any) {
        guard let channelName = nameTxt.text, nameTxt.text != "" else {return}
        guard let channelDesc = channelTxt.text else {return}
        
        SocketService.instance.addChannel(channelName: channelName, channelDescription: channelDesc) { (success) in
            if success {
                self.dismiss(animated: true, completion: nil)
            }
        }
    }
    

    @IBAction func closeModalPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func setupView() {
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(AddChannelViewController.closeTap(_:)))
        backgroundView.addGestureRecognizer(closeTouch)
        
        nameTxt.attributedPlaceholder = NSAttributedString(string: "name", attributes: [NSAttributedStringKey.foregroundColor: smackPurplePlaceholder])
        channelTxt.attributedPlaceholder = NSAttributedString(string: "description", attributes: [NSAttributedStringKey.foregroundColor: smackPurplePlaceholder])
    }
    
    @objc func closeTap(_ recongnizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }
}
