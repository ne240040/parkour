//
//  MainLoop.swift
//  parkour
//
//  Created by Shu Iida on 2016/03/08.
//  Copyright © 2016年 Shu Iida. All rights reserved.
//

import Foundation
import UIKit

class MainLoop:NSObject {
    var buildings:[Obstacle] = []
    var gameCnt:Int = 0
    
    var targetNum:Int = 0
    var targetMoveSum:Float = 250
    
    init(mainView:UIView) {
        // Instantiate ten buildings.
        for _ in 0...9 {
            if let build:UIImage? = UIImage(named: "building01.png") {
                let b:Obstacle = Obstacle(x:(Float)(UIScreen.mainScreen().bounds.width),
                                          y:Float(UIScreen.mainScreen().bounds.height)-100,
                                          h:100,
                                          w:50,
                                          img:build!)
                buildings.append(b)
                mainView.addSubview(b.imgView)
            }
        }
    }
    
    init(mainView:UIView, p:UIImageView){
        for _ in 0...9 {
            if let build:UIImage? = UIImage(named: "building01.png") {
                let b:Obstacle = Obstacle(x:(Float)(UIScreen.mainScreen().bounds.width),
                    y:Float(UIScreen.mainScreen().bounds.height)-100,
                    h:100,
                    w:50,
                    img:build!)
                buildings.append(b)
                mainView.addSubview(b.imgView)
            }
        }
    }
    
    func update(timer : NSTimer) {
        targetMoveSum += buildings[targetNum].speed
        
        let dist = (Float)((Int)(arc4random()%80+10)*5)+(Float)(30)

        for i in 0...9 {
            if(targetMoveSum>=dist && buildings[i].speed==0){
                print("targetMoveSum:\(targetMoveSum), dist:\(dist)")
                buildings[i].speed = 1.3
                targetNum = i
                targetMoveSum = 0
                if((Int)(arc4random()%2)==0){
                    buildings[i].imgView.image = UIImage(named: "pengin008.png")
                }else{
                    buildings[i].imgView.image = UIImage(named:"building01.png")
                }
                break;
            }
        }
        for i in 0...9 {
            buildings[i].move()
            if(buildings[i].xpos <= -50) {
                buildings[i].xpos = (Float)(UIScreen.mainScreen().bounds.width)// + (Float)(arc4random_uniform(300)) * (Float)(i) + 50 * (Float)(i);
                buildings[i].setHeight(50 + (Int)(arc4random_uniform(100)));
                buildings[i].speed = 0
            }
        }
    }
}