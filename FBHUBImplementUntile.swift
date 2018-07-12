//
//  FBHUBImplementUntile.swift
//  flowBoxc
//
//  Created by zhoumeineng on 2018/7/11.
//  Copyright © 2018年 zhoumeineng. All rights reserved.
//

import UIKit

class FBHUBImplementUntile: FBHUB {

     static func MenberShowHUBAnimal() {
        FBHUBMaskBackGround = UIColor.clear;
        super.ShowHUB();
        FBHUBAnimalView.ShowAnimal(view: self.HUBView);
        hubtype = HUBTYPE.AinmalHUB;
        
    }
    
    static func MenberShowHUBContext(context: String) {
        super.ShowHUB();
        FBHUBTipView.ShowContext(view: self.HUBView, Context: context);
        hubtype = HUBTYPE.TipHUB;
    }
    
    /**
     * 添加自定义 View
     */
    
    static func MenberShowHUBCustomView(view:UIView){
        super.ShowHUB();
        self.HUBView.addSubview(view);
        hubtype = HUBTYPE.Custom;
    }
    
    static func MenberHidHUB() {
        super.HidHUB();
        
    }
    
}
