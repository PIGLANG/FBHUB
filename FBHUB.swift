//
//  FBHUB.swift
//  flowBoxc
//
//  Created by zhoumeineng on 2018/7/10.
//  Copyright © 2018年 zhoumeineng. All rights reserved.
//


import UIKit
class FBHUB: FBHUBProcol {
    enum HUBTYPE {
        case AinmalHUB;
        case TipHUB;
        case Custom;
    }
    
    /**
     * 底面 视图
     */
    static let HUBView:FBHUBView = {
        return FBHUBView.init(frame: CGRect.init(x: 0, y: 0, width: FBWIDHT, height: FBHEIGHT));
    }()
    static func ShowHUB()->Void {
        if  (UIApplication.shared.keyWindow?.subviews.contains(where: { (view) -> Bool in
            if view ==  self.HUBView {
                if hubtype == HUBTYPE.AinmalHUB {
                    FBHUBAnimalView.animalView.StopAnimal();
                }
                return false;
            }
            return true;
        }))! {
            UIApplication.shared.keyWindow?.addSubview(HUBView);
        }
    }
    
    static func HidHUB() {
        if hubtype == HUBTYPE.AinmalHUB {
            FBHUBAnimalView.animalView.StopAnimal();
        }
       HUBView.removeFromSuperview();
    }
    
    
    static var hubtype:HUBTYPE = HUBTYPE.AinmalHUB;
  
}
