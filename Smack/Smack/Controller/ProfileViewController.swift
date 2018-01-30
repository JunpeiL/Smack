//
//  ProfileViewController.swift
//  Smack
//
//  Created by offline on 28/01/2018.
//  Copyright © 2018 JoP. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    // Outlets
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var usernameLbl: UILabel!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var backgroundView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    @IBAction func closeModalPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func logoutPressed(_ sender: Any) {
        UserDataService.instance.logoutUser()
        NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
        dismiss(animated: true, completion: nil)
    }
    
    func setupView() {
        usernameLbl.text = UserDataService.instance.name
        emailLbl.text = UserDataService.instance.email
        profileImage.image = UIImage(named: UserDataService.instance.avatarName)
        profileImage.backgroundColor = UserDataService.instance.returnUIColor(component: UserDataService.instance.avatarColor)
        
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(ProfileViewController.closeTap(_:)))
        backgroundView.addGestureRecognizer(closeTouch)
    }
    
    @objc func closeTap(_ recongnizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
