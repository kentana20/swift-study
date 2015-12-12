//
//  TimerEx.swift
//  TimerEx
//
//  Created by kensuke tanaka on 12/12/15.
//  Copyright © 2015 kentana20. All rights reserved.
//

import UIKit

class TimerEx: UIView {
    var _timer: NSTimer!
    var _image: UIImage!
    var _px = 0
    var _py = 0
    var _vx = 4
    var _vy = 4
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        _image = UIImage(named: "sample.png")
        _px = Int(UIScreen.mainScreen().bounds.size.width/2)
        _py = Int(UIScreen.mainScreen().bounds.size.height/2)
        
    }
    
    override func drawRect(rect: CGRect) {
        _image.drawAtPoint(CGPointMake(CGFloat(_px)-60, CGFloat(_py)-60))
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if _timer == nil {
            _timer = NSTimer.scheduledTimerWithTimeInterval(
                1.0/30.0,
                target: self,
                selector: "onTick:",
                userInfo: nil,
                repeats: true
                )
        } else {
            _timer.invalidate()
            _timer = nil
        }
    }
    
    func onTick(timer: NSTimer) {
        _px += _vx
        _py += _vy
        
        if _px < 0 { _vx = 4 }
        if Int(self.bounds.size.width) < _px { _vx = -4 }
        if _py < 0 { _vy = 4 }
        if Int(self.bounds.size.height) < _py { _vy = -4 }
        
        self.setNeedsDisplay()
    }
}

