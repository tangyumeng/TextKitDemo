//
//  RoundTextKitViewController.swift
//  TextKitDemo
//
//  Created by yumeng tang on 2018/7/11.
//  Copyright © 2018年 yumeng tang. All rights reserved.
//

import UIKit
import SnapKit

class RoundTextKitViewController: UIViewController {

    let textView = TextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        let string = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda."
        textView.attributedText = NSAttributedString(string: string)
        view.addSubview(textView)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.snp.makeConstraints { (make) -> Void in
            make.width.height.equalTo(240)
            make.center.equalTo(self.view)
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        textView.textContainer.exclusionPaths = [textView.exclusionPath]
    }

   
}
