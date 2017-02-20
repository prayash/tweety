//
//  Service.swift
//  Tweety
//
//  Created by Prayash Thapa on 2/19/17.
//  Copyright © 2017 Prayash Thapa. All rights reserved.
//

import Foundation
import TRON
import SwiftyJSON

struct Service {
    static let sharedInstance = Service()
    
    let tron = TRON(baseURL: "https://api.letsbuildthatapp.com")
    
    func fetchHomeFeed(completion: @escaping (HomeDatasource) -> ()) {
        print("- Fetching home feed...")
        
        let req: APIRequest<HomeDatasource, JSONError> = tron.request("/twitter/home")
        req.perform(withSuccess: { (homeDatasource) in
            
            print("- Successfully fetched home feed.")
            completion(homeDatasource)
            
        }) { (err) in
            print("Error fetching JSON...", err)
        }
    }
    
    class JSONError: JSONDecodable {
        required init(json: JSON) throws {
            print("JSON Error")
        }
    }
}
