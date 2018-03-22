//
//  ExternalService.swift
//  RepresentableExample
//
//  Created by Sai Teja Jammalamadaka on 3/22/18.
//  Copyright © 2018 Mutual Mobile. All rights reserved.
//

import Foundation

class ExternalService {
    static func getFBPosts() -> [FBPost] {
        var toReturnArray:[FBPost] = [FBPost]()
        for iter in 0..<10 {
            let newPost = FBPost(
                fbUser: "FB Author \(iter)",
                fbPostTitle: "FB Title \(iter)",
                fbPostText: "FB Text \(iter)",
                fbPostLikes: iter
            );
            toReturnArray.append(newPost);
        }
        return toReturnArray
    }
    
    static func getTweets() -> [Tweet] {
        var toReturnArray:[Tweet] = [Tweet]()
        for iter in 0..<10 {
            let newPost = Tweet(
                twUser: "Twitter User \(iter)",
                twText: "Tweet \(iter)",
                twRetweets: iter
            );
            toReturnArray.append(newPost);
        }
        return toReturnArray
    }
}
