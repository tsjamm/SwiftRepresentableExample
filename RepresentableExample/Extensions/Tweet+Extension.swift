//
//  Tweet+Extension.swift
//  RepresentableExample
//
//  Created by Sai Teja Jammalamadaka on 3/22/18.
//  Copyright © 2018 Mutual Mobile. All rights reserved.
//

import Foundation

extension Tweet: SocialPostRepresentable {
    
    var socialPostAuthor: String {
        return twUser
    }
    
    var socialPostText: String {
        return twText
    }
    
    var socialPostPopularity: Int {
        return twRetweets
    }
    
    var socialPostSource: String {
        return "Twitter"
    }
    
}
