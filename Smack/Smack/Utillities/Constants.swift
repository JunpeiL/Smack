//
//  Constants.swift
//  Smack
//
//  Created by offline on 04/01/2018.
//  Copyright © 2018 JoP. All rights reserved.
//

import Foundation

//
typealias CompletionHandler = (_ Sucess: Bool) -> ()

//URL Constants
let BASE_URL = "https://c-chat-c.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"
let URL_USER_ADD = "\(BASE_URL)user/add"

// Segues
let TO_LOGIN_VIEW_CONTROLLER = "toLoginViewController"
let TO_CREATE_ACCOUNT_VIEW_CONTROLLER = "toCreateAccountViewController"
let UNWIND_TO_CHANNEL_VIEW_CONTROLLER = "unwindToChannelViewController"

// User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

// Header
let HEADER = [
    "Content-Type" : "application/json; charset=utf-8"
]
