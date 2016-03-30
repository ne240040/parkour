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
    
    init(mainView:UIView) {
        // Instantiate ten buildings.
        for _ in 0...9 {
            if let build:UIImage? = UIImage(named: "building01.png") {
                let b:Obstacle = Obstacle(x:-90,
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
        for i in 0...9 {
            buildings[i].move()
            if(buildings[i].xpos <= -100) {
                buildings[i].xpos = 700 + (Float)(arc4random_uniform(300)) * (Float)(i) + 50 * (Float)(i);
                buildings[i].setHeight(50 + (Int)(arc4random_uniform(100)));
            }
        }
    }
}