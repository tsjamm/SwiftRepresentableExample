//
//  ListViewController.swift
//  RepresentableExample
//
//  Created by Sai Teja Jammalamadaka on 3/22/18.
//  Copyright © 2018 Mutual Mobile. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    
    @IBOutlet weak var listView: ListView!
    var manager: DataManager?
    var socialPosts: [SocialPostRepresentable] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        manager = DataManager()
        socialPosts = manager?.getSocialMediaPosts() ?? []
        
        listView.dataSource = self
    }
    
    
    
}

extension ListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return socialPosts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let socialPost = socialPosts[indexPath.row]
        if let listCell = tableView.dequeueReusableCell(withIdentifier: "listCell") as? ListViewCell {
            listCell.dataSource = socialPost
            return listCell
        }
        return ListViewCell()
    }
    
}
