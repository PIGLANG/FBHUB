//
//  FBHUBView.swift
//  flowBoxc
//
//  Created by zhoumeineng on 2018/7/10.
//  Copyright © 2018年 zhoumeineng. All rights reserved.
//

import UIKit

class FBHUBView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame);
        self.backgroundColor = FBHUBMaskBackGround
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("失败");
    }
    
}
