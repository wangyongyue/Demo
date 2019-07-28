//
//  BaseTabBarController.swift
//  Demo
//
//  Created by apple on 2019/7/2.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        addChildVC(childVC: Home().v_viewController(), childTitle: "Home", image: Image.Back(), selectedImage: Image.Back())
        addChildVC(childVC: Menu().v_viewController(), childTitle: "Home", image: Image.Back(), selectedImage: Image.Back())
        addChildVC(childVC: Home().v_viewController(), childTitle: "Home", image: Image.Back(), selectedImage: Image.Back())

    }
    
    // 添加子控制器
    private func addChildVC(childVC: UIViewController, childTitle: String, image: UIImage?, selectedImage:UIImage?) {
        let navigation = BaseNavigationController(rootViewController: childVC)
        
        //背景颜色
        let dict:NSDictionary = [NSAttributedString.Key.foregroundColor: UIColor.white,NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18)]
        //标题颜色
        navigation.navigationBar.titleTextAttributes = dict as? [NSAttributedString.Key : AnyObject]
        self.tabBar.tintColor = Color.textColor()
        childVC.title = childTitle
        childVC.tabBarItem.image = image
        childVC.tabBarItem.selectedImage = selectedImage
        self.addChild(navigation)
        
    }
    


}
