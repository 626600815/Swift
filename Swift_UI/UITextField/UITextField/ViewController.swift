//
//  ViewController.swift
//  UITextField
//
//  Created by mainone on 16/6/12.
//  Copyright © 2016年 wjn. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let textField : DNTextField = DNTextField(frame: CGRectMake(20, 100, 300, 50))
        self.view.addSubview(textField)
        textField.delegate = self
        
//        textField.text = "这是一个textfield"
        textField.textColor = UIColor(red: 20/255.0, green: 40/255.0, blue: 255/255.0, alpha: 1.0)
        textField.font = UIFont.systemFontOfSize(18)
        textField.textAlignment = .Justified
        /*
         case Left          左对齐
         case Center        中间对齐
         case Right         右对齐
         case Justified     自然对齐方式 完全不知道和Natural有什么区别
         case Natural       默认对齐方式
         */
        textField.borderStyle = .RoundedRect
        /*
        case None           什么都没有
        case Line           边框划线
        case Bezel          边框划线 和line比较感觉区别不大,就左和上多了点阴影
        case RoundedRect    圆角矩形边框
        */
        
        textField.placeholder = "我是一个placeholder"    // 提示文字
        textField.adjustsFontSizeToFitWidth = true      // 文字自适应大小
        textField.minimumFontSize = 12                  // 最小缩到12号
        textField.contentVerticalAlignment = .Center    // 垂直方向居中对齐
        textField.background = UIImage(named: "")       // 设置背景图
        textField.clearButtonMode = .WhileEditing       // 编辑期间是否显示清楚按钮
        /*
         case Never             从不显示
         case WhileEditing      编辑期间显示
         case UnlessEditing     编辑结束后显示
         case Always            一直显示
         */
//        textField.keyboardType = .WebSearch
        /*
        case Default                默认类型是当前的输入法
        case ASCIICapable           可以输入ASCII字符
        case NumbersAndPunctuation  数字和各种标点符号.
        case URL                    网址便捷输入.com
        case NumberPad              0-9数字
        case PhonePad               1-9, *, 0, #,等待等按钮
        case NamePhonePad           优化输入名字和电话号码
        case EmailAddress           邮箱便捷输入
        case DecimalPad             带小数点的键盘
        case Twitter                优化文本输入(便捷输入@, #)
        case WebSearch              显示便于在网页上书写的虚拟键盘
        */
        textField.becomeFirstResponder() // 文本框在界面打开时弹出
        textField.becomeFirstResponder() // 收回键盘
        
        textField.returnKeyType = .Continue // 完成输入
        /*
         case Default           默认
         case Go                完成输入并跳转到另一页
         case Google            搜索
         case Join              注册用户或添加数据
         case Next              继续下一步
         case Search            搜索
         case Send              发送
         case Done              完成输入
         case EmergencyCall     紧急呼叫
         case Continue          继续(iOS 9.0 之后可用)
         */
        
        //设置placeholder的颜色和字体
        textField.setValue(UIColor.darkGrayColor(), forKeyPath: "_placeholderLabel.textColor")
        textField.setValue(UIFont.systemFontOfSize(18), forKeyPath:"_placeholderLabel.font")
        
    }
    
    // MARK: - UITextFieldDelegate
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        print("将要开始编辑---->\(textField.text)")
        return true
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        print("已经开始编辑---->\(textField.text)")
    }
    
    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        print("将要结束编辑---->\(textField.text)")
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        print("已经开始编辑---->\(textField.text)")
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        print("text--->\(textField.text), range--->\(range), replacementString----->\(string)")
        return true
    }
    
    func textFieldShouldClear(textField: UITextField) -> Bool {
        print("清空编辑---->\(textField.text)")
        return true
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        print("点击return按钮------>\(textField.text)")
        textField.resignFirstResponder()
        return true
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


