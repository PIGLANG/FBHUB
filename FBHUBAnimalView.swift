//
//  FBHUBAnimalView.swift
//  flowBoxc
//
//  Created by zhoumeineng on 2018/7/10.
//  Copyright © 2018年 zhoumeineng. All rights reserved.
//

import UIKit

class FBHUBAnimalView: UIView {
    
    static let animalView:FBHUBAnimalView = {
        return FBHUBAnimalView.init(frame: CGRect.init(x: 0, y: 0, width: HUBAnimalWIGHT, height: HUBAnimalHEIGHT));
    }()
    
    var HUBimage:FBHUBImageView = FBHUBImageView.init(frame: CGRect.init(x: 0, y: 0, width: HUBAnimalImageWIGHT, height: HUBAnimalImageHEIGHT));
    
    static func ShowAnimal(view:FBHUBView){
        
        if view.subviews.count==0 {
            self.animalView.AnimalFrame(view: view);
            self.animalView.StartAnimal();
            return ;
        }
        
        if (view.subviews.contains(where: { (menberView) -> Bool in
            if self.animalView == menberView{
                return false;
            }else{
                menberView.removeFromSuperview();
            }
            return true;
        })) {
            self.animalView.AnimalFrame(view: view);
        }
        self.animalView.StartAnimal();
    }
    
    func AnimalFrame(view:FBHUBView) -> Void {
        
        FBHUBAnimalView.animalView.center = CGPoint.init(x: view.frame.size.width/2.0, y: view.frame.size.height/2.0);
        view.addSubview(FBHUBAnimalView.animalView);
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame);
        self.addSubview(HUBimage);
        self.backgroundColor = FBHUBAnimalBackGround;
        self.layer.cornerRadius = 5;
        self.layer.masksToBounds = true;
        HUBimage.center = CGPoint.init(x: frame.size.width/2.0, y: frame.size.height/2.0);
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("失败");
    }
    
    /**
     *  添加 图片 或者 添加 动画
     */
   public func AddImageView() -> Void {
        self.addSubview(HUBimage);
    
    }

    /**
     *  开始 动画效果
     */
    public func StartAnimal(){
        HUBimage.StartAnimal();
    }
    
    /**
     *   移除
     */
    public func removeImageView()->Void{
        self.removeFromSuperview();
    }
    
    /**
     * 动画停止
     */
    public func StopAnimal()->Void{
            HUBimage.StopAnimal();
    }
}
