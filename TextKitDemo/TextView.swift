//
//  TextView.swift
//  TextKitDemo
//
//  Created by yumeng tang on 2018/7/11.
//  Copyright © 2018年 yumeng tang. All rights reserved.
//

import UIKit

class TextView: UITextView {

    convenience init(){
        self.init(frame: .zero, textContainer: nil)
    }
    
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame:frame, textContainer: textContainer)
        
        isScrollEnabled = false
        isEditable = false
        textContainerInset = .zero
        self.textContainer.lineBreakMode = .byTruncatingTail
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var exclusionPath: UIBezierPath {
        let path = UIBezierPath(ovalIn: bounds)
        path.append(UIBezierPath(rect: bounds))
        path.usesEvenOddFillRule = true
        return path
    }
    
}


extension TextView {
    override func draw(_ rect: CGRect) {
        UIColor.orange.setFill()
        let path = UIBezierPath(ovalIn: rect)
        path.fill()
    }
}
