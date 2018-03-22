//
//  FBPost+Extension.swift
//  RepresentableExample
//
//  Created by Sai Teja Jammalamadaka on 3/22/18.
//  Copyright © 2018 Mutual Mobile. All rights reserved.
//

import Foundation

extension FBPost: SocialPostRepresentable {
    
    var socialPostAuthor: String {
        return fbUser
    }
    
    var socialPostText: String {
        return fbPostTitle + " :: " + fbPostText
    }
    
    var socialPostPopularity: Int {
        return fbPostLikes
    }
    
    var socialPostSource: String {
        return "Facebook"
    }
    
}
