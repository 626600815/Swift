//
//  ViewController.swift
//  UILabel
//
//  Created by mainone on 16/5/26.
//  Copyright © 2016年 wjn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let text : String = "This is a Label"
        
        /*常用属性*/
        let rect : CGRect = CGRectMake(20, 100, UIScreen.mainScreen().bounds.size.width - 40, 100)
        let label : UILabel        = UILabel(frame: rect)
        label.backgroundColor      = UIColor.orangeColor()
        self.view.addSubview(label)

        label.text          = text // label文字(默认nil)
        label.font          = UIFont.boldSystemFontOfSize(14) // 字体大小(默认system font 17)
        label.textColor     = UIColor.whiteColor() // 字体颜色(默认black)
        label.shadowColor   = UIColor.blueColor() // 阴影(默认没有阴影)
        label.shadowOffset  = CGSizeMake(1, 1) // 阴影范围(默认CGSizeMake(0, -1))
        label.textAlignment = .Center // 文字对齐方式(默认.Left)
        label.lineBreakMode = .ByCharWrapping // 文字省略方式(默认.ByTruncatingTail)
        /*
         case ByWordWrapping // 以单词为显示单位显示，后面部分省略不显示
         case ByCharWrapping // 以字符为显示单位显示，后面部分省略不显示
         case ByClipping // 剪切与文本宽度相同的内容长度，后半部分被删除
         case ByTruncatingHead //前面部分文字以……方式省略，显示尾部文字内容 "...wxyz"
         case ByTruncatingTail // 结尾部分的内容以……方式省略，显示头的文字内容 "abcd..."
         case ByTruncatingMiddle // 中间的内容以……方式省略，显示头尾的文字内容 "ab...yz"
         */
        //attributed设置后,上面的标签属性可以忽略
        let attributed: NSAttributedString           = NSAttributedString(string: text)
        let paragraphStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing                   = 20 // 行间距
        paragraphStyle.paragraphSpacing              = 30 // 段落间距
        paragraphStyle.alignment                     = .Justified // 对其方式
        /*
         case Left // 左对齐
         case Center // 居中对齐
         case Right // 右对齐
         case Justified // 最后一行是自然对齐。
         case Natural // 默认自然对齐方式
         */
        paragraphStyle.firstLineHeadIndent  = 29 // 首行空N像素
        paragraphStyle.headIndent           = 10 // 头缩进
        paragraphStyle.tailIndent           = 10 // 尾缩进
        paragraphStyle.lineBreakMode        = .ByCharWrapping // 换行模式
        paragraphStyle.minimumLineHeight    = 20 // 最小行高
        paragraphStyle.maximumLineHeight    = 40 // 最大行高
        paragraphStyle.baseWritingDirection = .LeftToRight // 书写方式
        /*
         case Natural //自然方式
         case LeftToRight // 从左到右
         case RightToLeft // 从右到左
         */
        paragraphStyle.lineHeightMultiple     = 50 // 多行高
        paragraphStyle.paragraphSpacingBefore = 20 // 段前间距
        paragraphStyle.hyphenationFactor      = 10 // 连接符连接
        
        let listTab : NSTextTab           = NSTextTab(textAlignment: .Natural, location: 10, options: [:])
        paragraphStyle.tabStops           = [listTab]// 增加一个制表符
        paragraphStyle.defaultTabInterval = 10// 默认选项卡间隔
        label.attributedText              = attributed;
        
        label.highlightedTextColor   = UIColor.redColor()// 高亮状态下文字颜色
        label.highlighted            = true// 是否开启高亮状态
        label.userInteractionEnabled = true// label交互开启(默认NO)
        label.enabled                = false// 更改标签如何绘制(默认YES)
        label.numberOfLines          = 0// 行数
        
        label.adjustsFontSizeToFitWidth = true // 调整字体大小以适应宽度
        label.baselineAdjustment = .AlignCenters // 基线对齐方式
        /*
         case AlignBaselines
         case AlignCenters
         case None
         */
        label.minimumScaleFactor = 0.5 // 最低比例
        label.preferredMaxLayoutWidth = 100 // iOS6.0自动换行需要设置后才能判断在哪这行
        
        
        /*-----------------------显示HTML标签-----------------------*/
        let html =  "this is html <a href=\"http://www.baidu.com\">link</a>"
        let data = html.dataUsingEncoding(NSUTF32StringEncoding, allowLossyConversion: false)
        let textattr = try! NSAttributedString(data: data!,
                                               options: [NSDocumentTypeDocumentAttribute:NSHTMLTextDocumentType],
                                               documentAttributes: nil)
        label.multipleTouchEnabled = true
        label.attributedText       = textattr
        self.view.addSubview(label)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

