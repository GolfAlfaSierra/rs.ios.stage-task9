//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: John Kent
// On: 28.07.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit

class MainViewController: UITabBarController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        setupSelf()
        
        
        
    }
    
    func setupSelf(){
        view.backgroundColor = .white
        setupTabBar()
    }
    
    func setupTabBar() {
        tabBar.unselectedItemTintColor = .appGray
        tabBar.tintColor = .red
        setupItems()
        
    }
    
    
    func setupItems() {
        
        
        let item = UITabBarItem()
        item.title = "Items"
        item.image = UIImage(systemName: "square.grid.2x2")
        
        let item2 = UITabBarItem()
        item2.title = "Settings"
        item2.image = UIImage(systemName: "gear")
        
        
        let itemsVC = ItemsViewController()
        itemsVC.tabBarItem = item
        
        let settingsVC = APPSettingsNavigationViewController()
        settingsVC.tabBarItem = item2
        
        viewControllers = [itemsVC, settingsVC]
    }
}
