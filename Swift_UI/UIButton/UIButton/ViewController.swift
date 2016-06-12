//
//  ViewController.swift
//  UIButton
//
//  Created by mainone on 16/5/30.
//  Copyright © 2016年 wjn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let button : DNButton                     = DNButton(type: .Custom)
        self.view.addSubview(button)
        button.frame                              = CGRectMake(100, 100, 100, 100)
        button.backgroundColor                    = UIColor.orangeColor()
        button.contentEdgeInsets                  = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        button.titleEdgeInsets                    = UIEdgeInsets(top: 70, left: -50, bottom: 10, right: 5)
        button.reversesTitleShadowWhenHighlighted = true // 雕刻和浮雕之间的转变
        button.imageEdgeInsets                    = UIEdgeInsets(top: 10, left: 20, bottom: 30, right: 20)
        button.adjustsImageWhenHighlighted        = true // 图片高亮下阴影
        button.adjustsImageWhenDisabled           = false // 图片轻画的时候禁用
        button.showsTouchWhenHighlighted          = true // 有相应的时候高亮

        button.setImage(UIImage(named: "tab_center_normal"), forState: .Normal)
        button.setTitle("我是按钮", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        button.setTitleShadowColor(UIColor.brownColor(), forState: .Normal)
        button.tintColor                          = UIColor.redColor()

        button.attributedTitleForState(.Normal) // /返回在某个状态下，按钮标题的富文本
        
        print(button.currentTitle) // 获取当前标题
        print(button.currentTitleColor) // 获取当前标题颜色
        print(button.currentTitleShadowColor) // 获取当前标题阴影颜色
        print(button.currentImage) // 获取当前按钮的图片
        print(button.currentBackgroundImage) // 获取当前背景图片
        print(button.currentAttributedTitle) // 获取当前富文本标题
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

