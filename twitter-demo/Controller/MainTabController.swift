//
//  MainTabController.swift
//  twitter-demo
//
//  Created by Ayub Ali on 2020-05-13.
//  Copyright © 2020 Ayub Ali. All rights reserved.
//

import UIKit

class MainTabController: UITabBarController {

    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureViewControllers()
    }
    
    // MARK: - Helper functions
    func configureViewControllers(){
        
        let feed = FeedController()
        feed.tabBarItem.image = UIImage(named: "home_unselected")
        
        let explore = ExploreController()
        explore.tabBarItem.image = UIImage(named: "search_unselected")
        
        let notifications = NotificationsController()
        notifications.tabBarItem.image = UIImage(named: "like_unselected")
        
        let conversations = ConversationsController()
        conversations.tabBarItem.image = UIImage(named: "mail")
        
        viewControllers = [feed,explore,notifications,conversations]
    }

}
