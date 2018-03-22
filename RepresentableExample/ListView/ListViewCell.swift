//
//  ListViewCell.swift
//  RepresentableExample
//
//  Created by Sai Teja Jammalamadaka on 3/22/18.
//  Copyright © 2018 Mutual Mobile. All rights reserved.
//

import UIKit

class ListViewCell: UITableViewCell {
    var dataSource: SocialPostRepresentable? {
        didSet {
            setLabelValues()
        }
    }
    
    func setLabelValues() {
        if let _dataSource = dataSource {
            textLabel?.text = _dataSource.socialPostAuthor + ": "+_dataSource.socialPostText
            detailTextLabel?.text = _dataSource.socialPostSource + " -- Popularity:\(_dataSource.socialPostPopularity)"
        } else {
            textLabel?.text = "Not Available"
            detailTextLabel?.text = "Not Available"
        }
    }
}
