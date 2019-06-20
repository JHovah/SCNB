
//
//  MainTabBarController.swift
//  Peek Beta
//
//  Created by Jacorey Brown on 1/29/19.
//  Copyright © 2019 Jacorey Brown. All rights reserved.
//

import UIKit

class MainTabBarViewController : UITabBarController {
 
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
    
    // set up tab bar for main view
    func setupTabBar() {
        viewControllers = [
            createNavBarController(viewController: JobSearchController(), unselectedImage: "search_unselected", selectedImage: "search_selected"),
            createNavBarController(viewController: JobsController(), unselectedImage: "like_unselected", selectedImage: "like_selected"),
            createNavBarController(viewController: TestProfile(), unselectedImage: "profile_unselected", selectedImage: "profile_selected")
        ]
    
    }
    
    /* function that takes parameters of navigation controllers to build nav controllers
     @param view controller is an intended view controller
     @param unselectedImage is the unselected image of the tab bar item
     @param selectedImage is the selected image of the tab bar item
     
     */
    fileprivate func createNavBarController(viewController: UIViewController, unselectedImage: String, selectedImage: String) -> UIViewController {
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.image = UIImage(named: unselectedImage)
        navController.tabBarItem.selectedImage = UIImage(named: selectedImage)
        return navController
    }
    
    
}
