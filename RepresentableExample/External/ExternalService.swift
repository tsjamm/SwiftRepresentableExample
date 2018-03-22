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
        var postList:[FBPost] = [FBPost]()
        for index in 0..<10 {
            let newPost = FBPost(
                fbUser: "FB Author \(index)",
                fbPostTitle: "FB Title \(index)",
                fbPostText: "FB Text \(index)",
                fbPostLikes: index
            );
            postList.append(newPost);
        }
        return postList
    }
    
    static func getTweets() -> [Tweet] {
        var tweets:[Tweet] = [Tweet]()
        for index in 0..<10 {
            let newPost = Tweet(
                twUser: "Twitter User \(index)",
                twText: "Tweet \(index)",
                twRetweets: index
            );
            tweets.append(newPost);
        }
        return tweets
    }
}
