//
//  ViewController.swift
//  ParticleLayer
//
//  Created by _Zach on 7/23/14.
//  Copyright (c) 2014 Compoucher. All rights reserved.
//

import UIKit
import QuartzCore

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        let em : CAEmitterLayer = self.view.layer as CAEmitterLayer
        
        em.renderMode = kCAEmitterLayerOldestFirst
        em.emitterShape = kCAEmitterLayerLine
        em.emitterMode = kCAEmitterLayerSurface
        em.emitterSize = CGSize(width: 100, height: 0)
        
        em.emitterPosition = CGPointMake(self.view.frame.width/2, self.view.frame.height/2)
        
        let fireCell = CAEmitterCell()
        fireCell.contents = UIImage(named: "pink.png").CGImage
        fireCell.contentsRect = CGRect(x: 0, y: 0, width: 1.0, height: 1.0)
        fireCell.birthRate = 5.0
        fireCell.lifetime = 5
        fireCell.velocity = 40
        fireCell.velocityRange = 10
        fireCell.scale = 1
        fireCell.scaleRange = 0.5
        fireCell.scaleSpeed = -0.2
//        fireCell.alphaRange = 0.2
//        fireCell.alphaSpeed = -0.2
        fireCell.color = UIColor.blueColor().CGColor
        
        // emissions angle stuff
        fireCell.emissionLongitude = CGFloat(M_PI)
        //fireCell.emissionRange = CGFloat(M_PI_2)
        
        //fireCell.color = UIColor.redColor().CGColor
        em.emitterCells = [fireCell]
    }
}