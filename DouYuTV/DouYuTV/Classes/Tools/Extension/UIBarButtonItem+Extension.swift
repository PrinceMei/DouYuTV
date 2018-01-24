
//
//  UIBarButtonItem+Extension.swift
//  DouYuTV
//
//  Created by PrinceMei on 2018/1/22.
//  Copyright © 2018年 Fsociety. All rights reserved.
//

import Foundation
import UIKit

extension UIBarButtonItem {
    
    class func createItem(imageName: String,hightedImageName: String,size: CGSize)->UIBarButtonItem {
        
        let btn = UIButton()
        
        btn.setImage(UIImage(named: imageName), for: .normal)
        btn.setImage(UIImage(named: hightedImageName), for: .highlighted)
        btn.frame = CGRect (origin: CGPoint.zero,size: size)
        
        return UIBarButtonItem(customView: btn)
    }
    
}
