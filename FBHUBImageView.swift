//
//  FBHUBImageView.swift
//  flowBoxc
//
//  Created by zhoumeineng on 2018/7/10.
//  Copyright © 2018年 zhoumeineng. All rights reserved.
//

import UIKit

class FBHUBImageView: UIView {
    
    
    override func draw(_ rect: CGRect) {
        let  context:CGContext = UIGraphicsGetCurrentContext()!;
        context.addArc(center: CGPoint.init(x: self.frame.width/2.0, y: self.frame.height/2.0), radius: (self.frame.width-1)/2.0, startAngle: 0, endAngle: CGFloat(M_PI_4), clockwise: true);
        context.setLineWidth(2);
        context.setStrokeColor(FBHUBAnimalGround.cgColor);
        context.strokePath();
    }
    
    
    public func StartAnimal() -> Void {
        self.backgroundColor = UIColor.black;
        if (self.layer.animation(forKey: "rota") != nil) {
            self.layer.removeAllAnimations();
        }
        let anima = CABasicAnimation.init(keyPath: "transform.rotation");
        anima.fromValue = 0;
        anima.toValue = M_PI*2;
        anima.duration = 2;
        anima.repeatCount = MAXFLOAT;
        self.layer.add(anima, forKey: "rota");
    }
    
   public func StopAnimal() -> Void {
        self.layer.removeAllAnimations();
    }
}
