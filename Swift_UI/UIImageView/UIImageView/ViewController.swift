//
//  ViewController.swift
//  UIImageView
//
//  Created by mainone on 16/6/13.
//  Copyright © 2016年 wjn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let imageView : UIImageView = UIImageView(frame: CGRectMake(100, 100, 100, 100))
        self.view.addSubview(imageView)
        imageView.backgroundColor = UIColor.orangeColor()
        imageView.image = UIImage(named: "tab_center_normal")
        
        imageView.contentMode = .ScaleAspectFill // 保持图片比例
        /*
             Scale 拉伸图片
             Aspect 图片长宽的比例，保持图形的长宽比，保持图片不变形
             Aspect Fill：在保持长宽比的前提下，缩放图片，使图片充满容器。
             Aspect Fit：在保持长宽比的前提下，缩放图片，使得图片在容器内完整显示出来。
             Scale to Fill: 缩放图片,使图片充满容器。图片未必保持长宽比例协调，有可能会拉伸至变形。
         */
        
        
        let url = NSURL(string: "http://ww2.sinaimg.cn/bmiddle/632dab64jw1ehgcjf2rd5j20ak07w767.jpg")
        let data = NSData(contentsOfURL: url!)
        if let imageData = data {
            imageView.image = UIImage(data: imageData)
        }
        
        
        //创建一个组组队队列
        let group : dispatch_group_t =  dispatch_group_create();
        //使用组队列异步函数,分别有组队列,和队列的参数.
        
        dispatch_group_async(group, dispatch_get_global_queue(0, 0)) { 
            print("我先睡三秒钟")
            sleep(3)
        }
        dispatch_group_async(group, dispatch_get_global_queue(0, 0)) {
            print("我再睡两秒吧")
            sleep(2)
        }
        dispatch_group_notify(group, dispatch_get_main_queue()) {
            print("终于醒了")
        };
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

