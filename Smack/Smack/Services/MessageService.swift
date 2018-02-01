//
//  MessageService.swift
//  Smack
//
//  Created by offline on 30/01/2018.
//  Copyright © 2018 JoP. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class MessageService {
    static let instance = MessageService()
    
    var channels = [Channel]()
    
    func findAllChannels(completion: @escaping CompletionHandler) {
        Alamofire.request(URL_GET_CHANNELS, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: BEARER_HEADER).responseJSON { (response) in
            if response.result.error == nil {
                do {
                    guard let data = response.data else {
                        print("data is nil")
                        return
                    }
//                    if let json = try JSON(data: data).array {
//                        for item in json {
//                            let name = item["name"].stringValue
//                            let channelDescription = item["description"].stringValue
//                            let id = item["_id"].stringValue
//                            let channel = Channel(channelTitle: name, channelDescription: channelDescription, id: id)
//                            self.channels.append(channel)
//                        }
//                        completion(true)
//                    }
                    self.channels = try JSONDecoder().decode([Channel].self, from: data)
                } catch let error as NSError {
                    // error
                    debugPrint(error as Any)
                }
                print(self.channels)
            } else {
                completion(false)
                debugPrint(response.result.error as Any)
            }
        }
    }
    
}
