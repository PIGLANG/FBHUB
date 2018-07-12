//
//  FBHUBMacro.swift
//  flowBoxc
//
//  Created by zhoumeineng on 2018/7/10.
//  Copyright © 2018年 zhoumeineng. All rights reserved.
//

import UIKit

var HUBAnimalWIGHT = 100;

var HUBAnimalHEIGHT = 100;

var HUBAnimalImageWIGHT = 60;

var HUBAnimalImageHEIGHT = 60;

func FBHUBColor(R:CGFloat,G:CGFloat,B:CGFloat,A:CGFloat)->UIColor {
    return UIColor.init(red: R/255.0, green: G/255.0, blue: B/255.0, alpha: A);
}
var FBHUBAnimalGround = FBHUBColor(R: 64, G: 163, B: 63, A: 1); //动画的颜色

var FBHUBAnimalBackGround = FBHUBColor(R: 1, G: 1, B: 1, A: 1);//动画背景的颜色

var FBHUBMaskBackGround = FBHUBColor(R: 200, G: 200, B: 200, A: 0.6); //蒙板的背景

var FBHUBContextColor =  FBHUBColor(R: 255, G: 255, B: 255, A: 1); //提示文字颜色

var FBHUBContextMaskBackGround = FBHUBColor(R: 1, G: 1, B: 1, A: 1); //提示文字 背景颜色

var FBHUBContextAfterTime:TimeInterval = 3





