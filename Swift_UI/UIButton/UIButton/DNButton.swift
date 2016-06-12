//
//  DNButton.swift
//  UIButton
//
//  Created by mainone on 16/6/12.
//  Copyright © 2016年 wjn. All rights reserved.
//

import UIKit

class DNButton: UIButton {

    override func backgroundRectForBounds(bounds: CGRect) -> CGRect { // 指定背景边界
        return CGRectMake(0, 0, 100, 100)
    }
    
    override func contentRectForBounds(bounds: CGRect) -> CGRect { // 指定内容边界
        return CGRectMake(0, 0, 100, 100)
    }
    
    override func titleRectForContentRect(contentRect: CGRect) -> CGRect { // 指定文字标题边界
        return CGRectMake(15, 60, 100, 40)
    }
    
    override func imageRectForContentRect(contentRect: CGRect) -> CGRect { // 指定图像边界
        return CGRectMake(25, 10, 50, 50)
    }

}


