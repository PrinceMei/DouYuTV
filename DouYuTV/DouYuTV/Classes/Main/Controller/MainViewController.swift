//
//  MainViewController.swift
//  DouYuTV
//
//  Created by PrinceMei on 2018/1/22.
//  Copyright © 2018年 Fsociety. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//
//        let vc = UIViewController();
//        vc.view.backgroundColor = UIColor.blue;
//        addChildViewController(vc);
        
//        //1.提供Storyboard获取控制器
//        let childVC = UIStoryboard(name:"Home",bundle:nil).instantiateInitialViewController()!;
//
//        //2.将childVC添加作为子控制器
//        addChildViewController(childVC);
        
        
        addChildViewController(storyBoardName : "Home")
        addChildViewController(storyBoardName : "Live")
        addChildViewController(storyBoardName : "Follow")
        addChildViewController(storyBoardName : "Profile")
        
        
    }
    
    //封装获取并添加子控制器
    private func addChildViewController(storyBoardName : String) {
        //1.提供Storyboard获取控制器
        let childVC = UIStoryboard(name:storyBoardName,bundle:nil).instantiateInitialViewController()!;
        
        //2.将childVC添加作为子控制器
        addChildViewController(childVC);
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
