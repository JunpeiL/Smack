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

// Color
let smackPurplePlaceholder = #colorLiteral(red: 0.3254901961, green: 0.4196078431, blue: 0.7764705882, alpha: 0.5)

// Notification_Constants
let NOTIF_USER_DATA_DID_CHANGE = Notification.Name("notifiDataDidChange")
let NOTIF_CHANNELS_LOADED = Notification.Name("channelsLoaded")
let NOTIF_CHANNEL_SELECTED = Notification.Name("channelSelected")

//URL Constants
let BASE_URL = "https://c-chat-c.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"
let URL_USER_ADD = "\(BASE_URL)user/add"
let URL_USER_FIND_EMAIL = "\(BASE_URL)user/byEmail/"
let URL_GET_CHANNELS = "\(BASE_URL)channel/"

// Segues
let TO_LOGIN_VIEW_CONTROLLER = "toLoginViewController"
let TO_CREATE_ACCOUNT_VIEW_CONTROLLER = "toCreateAccountViewController"
let UNWIND_TO_CHANNEL_VIEW_CONTROLLER = "unwindToChannelViewController"
let TO_AVATAR_PICKER_VIEW_CONTROLLER = "toAvatarPickerViewController"

// User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

// Header
let HEADER = [
    "Content-Type" : "application/json; charset=utf-8"
]
let BEARER_HEADER = [
    "Authorization": "Bearer \(AuthService.instance.authToken)",
    "Content-Type" : "application/json; charset=utf-8"
]
