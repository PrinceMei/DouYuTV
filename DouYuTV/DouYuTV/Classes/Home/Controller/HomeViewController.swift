//
//  HomeViewController.swift
//  DouYuTV
//
//  Created by PrinceMei on 2018/1/22.
//  Copyright © 2018年 Fsociety. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setupUI()
    }

   
}

extension HomeViewController{
    
    private func setupUI(){
        setupNavigationBar()
    }
    
    private func setupNavigationBar(){
        
        let size = CGSize(width:40,height:40)
        
        
        let btn = UIButton()
        //setImage(_ image: UIImage?, for state: UIControlState)
        
        //1.设置左侧Item
        btn.setImage(UIImage(named: "logo"), for: .normal)
        //btn.sizeToFit()
        btn.frame = CGRect (origin: CGPoint.zero,size: size)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: btn)
        
        
         //2.设置右侧Items
        let historyBtn = UIButton()
        historyBtn.setImage(UIImage(named: "image_my_history"), for: .normal)
        historyBtn.setImage(UIImage(named: "Image_my_history_click"), for: .highlighted)
        historyBtn.frame = CGRect (origin: CGPoint.zero,size: size)
        let historyIteme = UIBarButtonItem(customView: historyBtn)
        
        
        let searchBtn = UIButton()
        searchBtn.setImage(UIImage(named: "image_my_history"), for: .normal)
        searchBtn.setImage(UIImage(named: "Image_my_history_click"), for: .highlighted)
        searchBtn.frame = CGRect (origin: CGPoint.zero,size: size)
        let  searchIteme = UIBarButtonItem(customView: historyBtn)
        
        
        
        let qrCodeBtn = UIButton()
        qrCodeBtn.setImage(UIImage(named: "image_my_history"), for: .normal)
        qrCodeBtn.setImage(UIImage(named: "Image_my_history_click"), for: .highlighted)
        qrCodeBtn.frame = CGRect (origin: CGPoint.zero,size: size)
        
        let qrCodeIteme = UIBarButtonItem(customView: historyBtn)
        
        navigationItem.rightBarButtonItems = [historyIteme,searchIteme,qrCodeIteme]
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
