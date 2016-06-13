//
//  DNTextField.swift
//  UITextField
//
//  Created by mainone on 16/6/12.
//  Copyright © 2016年 wjn. All rights reserved.
//

import UIKit

class DNTextField: UITextField {

    // MARK: - 重写父类方法
    override func borderRectForBounds(bounds: CGRect) -> CGRect { // 重置边缘区域
        return CGRectMake(bounds.origin.x + 50, 0, bounds.size.width - 50, bounds.size.height)
    }
    
    override func textRectForBounds(bounds: CGRect) -> CGRect { // 控制显示文本的位置(编辑完之后的显示位置)
        return CGRectMake(bounds.origin.x , 0, bounds.size.width , bounds.size.height)
    }

    override func placeholderRectForBounds(bounds: CGRect) -> CGRect { // 重置占位符区域
        return CGRectMake(bounds.origin.x + 50, 0, bounds.size.width , bounds.size.height)
    }

    override func editingRectForBounds(bounds: CGRect) -> CGRect { // 重置编辑区域
        return CGRectMake(bounds.origin.x + 50, 0, bounds.size.width - 70, bounds.size.height)
    }

    override func leftViewRectForBounds(bounds: CGRect) -> CGRect { // 控制左视图位置
        return CGRectMake(bounds.origin.x + 50, 0, bounds.size.width - 70, bounds.size.height)
    }

}

