//
//  CircleImageView.swift
//  Smack
//
//  Created by offline on 23/01/2018.
//  Copyright © 2018 JoP. All rights reserved.
//

import UIKit

@IBDesignable
class CircleImageView: UIImageView {
    override func awakeFromNib() {
        setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }
}
