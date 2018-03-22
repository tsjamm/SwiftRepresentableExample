//
//  DataManager.swift
//  RepresentableExample
//
//  Created by Sai Teja Jammalamadaka on 3/22/18.
//  Copyright © 2018 Mutual Mobile. All rights reserved.
//

import Foundation

class DataManager {
    func getSocialMediaPosts() -> [SocialPostRepresentable] {
        let fbPosts = ExternalService.getFBPosts()
        let tweets = ExternalService.getTweets()
        
        var toReturn:[SocialPostRepresentable] = [SocialPostRepresentable]()
        
        // We already know that count of both is same. Just mixing them up to showcase example
        for iter in 0..<fbPosts.count {
            toReturn.append(fbPosts[iter])
            toReturn.append(tweets[iter])
        }
        
        return toReturn
    }
}
