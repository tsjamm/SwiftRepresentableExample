//
//  SocialPostRepresentable.swift
//  RepresentableExample
//
//  Created by Sai Teja Jammalamadaka on 3/22/18.
//  Copyright © 2018 Mutual Mobile. All rights reserved.
//

import Foundation

protocol SocialPostRepresentable {
    var socialPostAuthor: String { get }
    var socialPostText: String { get }
    var socialPostPopularity: Int { get }
    var socialPostSource: String { get }
}
