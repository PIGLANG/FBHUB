//
//  FBHUBTipView.swift
//  flowBoxc
//
//  Created by zhoumeineng on 2018/7/10.
//  Copyright © 2018年 zhoumeineng. All rights reserved.
//

import UIKit

class FBHUBTipView: UIView {
    
    static let  contextView = FBHUBTipView.init(frame: CGRect.init(x: 0, y: 0, width:0 , height: 0));
    let lable:UILabel=UILabel.init();
    static func ShowContext(view:FBHUBView,Context:String)->Void{
        
        let react:CGRect = NSString.init(string: Context).boundingRect(with: CGSize.init(width: FBWIDHT - 80, height: CGFloat(MAXFLOAT)), options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 15)], context: nil);
        if view.subviews.contains(where: { (menberView) -> Bool in
            if contextView == menberView{
                return false;
            }else{
                menberView.removeFromSuperview();
            }
            return true;
        }) {
          contextView.frame = CGRect.init(x: 0, y: 0, width: react.size.width+20, height: react.size.height+20);
          contextView.center = CGPoint.init(x: view.frame.size.width/2.0, y: view.frame.size.height/2.0);
          view.addSubview(contextView);
        }
        contextView.ShowTips(frame: react, text: Context);
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+FBHUBContextAfterTime) {
          FBHUBImplementUntile.MenberHidHUB();
        }
    }
    
    private func ShowTips(frame:CGRect,text:String)->Void{
        lable.frame = CGRect.init(x: 0, y: 0, width: frame.size.width, height: frame.size.height);
        lable.center = CGPoint.init(x: self.frame.size.width/2.0, y: self.frame.size.height/2.0);
        lable.text = text;
        self.layer.cornerRadius = 5;
        self.layer.masksToBounds = true;
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame);
        self.Interface();
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("失败");
    }
    
   private func Interface() -> Void {
        self.addSubview(lable);
        self.backgroundColor = FBHUBContextMaskBackGround;
        self.lable.font = UIFont.systemFont(ofSize: 14);
        self.lable.textColor = FBHUBContextColor;
        self.lable.numberOfLines = 0;
    }

}
