//
//  Channel.swift
//  Smack
//
//  Created by offline on 31/01/2018.
//  Copyright © 2018 JoP. All rights reserved.
//

import Foundation

struct Channel : Decodable {
//    public private(set) var channelTitle: String!
//    public private(set) var channelDescription: String!
//    public private(set) var id: String!
    
    public private(set) var _id: String!
    public private(set) var name: String!
    public private(set) var description: String!
    public private(set) var __v: Int?
}
