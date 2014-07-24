//
//  File.swift
//  ParticleLayer
//
//  Created by _Zach on 7/23/14.
//  Copyright (c) 2014 Compoucher. All rights reserved.
//

import Foundation
import UIKit
import QuartzCore

class Emitter : UIView {
    
    init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
    }

    override class func layerClass() -> AnyClass! {
        return CAEmitterLayer().classForCoder
    }
}