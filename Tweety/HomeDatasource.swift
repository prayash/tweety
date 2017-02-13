//
//  HomeDatasource.swift
//  Tweety
//
//  Created by Prayash Thapa on 2/7/17.
//  Copyright © 2017 Prayash Thapa. All rights reserved.
//

import LBTAComponents

class HomeDatasource: Datasource {
    
    let users: [User] = {
        let prayashUser = User(name: "Prayash Thapa", username: "@effulgence", bioText: "I make music and write code that draws things. I am also an art and guitar nerd! Follow me if you're cool. I'll follow back! Promise!", profileImage: #imageLiteral(resourceName: "profile_image"))
        let rayUser = User(name: "Ray Wenderlich", username: "@rwenderlich", bioText: "Ray Renderlich is an iPhone developer and tweets on topics related to iPhone, software and gaming. Check out our conference.", profileImage: #imageLiteral(resourceName: "profile_image"))
        
        let pakUser = User(name: "Pakalu Papito", username: "@loser", bioText: "Ray Renderlich is an iPhone developer and tweets on topics related to iPhone, software and gaming. Check out our conference Ray Renderlich is an iPhone developer and tweets on topics related to iPhone, software and gaming. Check out our conference.", profileImage: #imageLiteral(resourceName: "profile_image"))
        
        return [prayashUser, rayUser, pakUser]
    }()
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return users[indexPath.item]
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        return users.count
    }
}
