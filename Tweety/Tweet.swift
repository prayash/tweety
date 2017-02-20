//
//  Tweet.swift
//  Tweety
//
//  Created by Prayash Thapa on 2/14/17.
//  Copyright © 2017 Prayash Thapa. All rights reserved.
//

import Foundation
import SwiftyJSON

struct Tweet {
    let user: User
    let msg: String
    
    init(json: JSON) {
        self.user = User(json: json["user"])
        self.msg = json["message"].stringValue
    }
}
