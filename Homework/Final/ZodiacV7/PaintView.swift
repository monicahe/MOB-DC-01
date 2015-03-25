//
//  PaintView.swift
//  ZodiacV7
//
//  Created by Monica He on 3/25/15.
//  Copyright (c) 2015 Monica He. All rights reserved.
//

import UIKit

class PaintView: UIView {

    var lines: [Line] = []
    var lastPoint: CGPoint!
    
//    init(coder aDecoder: NSCoder!) {
//    super.init(coder: aDecoder)
//        
//    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        lastPoint = touches.anyObject()?.locationInView(self)
    }
    
    override func touchesMoved(touches: NSSet, withEvent event: UIEvent) {
        
        var newPoint = touches.anyObject()?.locationInView(self)
        
        lines.append(Line(start: lastPoint, end: newPoint!))
        
        lastPoint = newPoint
        
        self.setNeedsDisplay()
        
    }
    
    override func drawRect(rect: CGRect) {
    
        var context = UIGraphicsGetCurrentContext()
    
        CGContextBeginPath(context)
        
        for line in lines {
            CGContextMoveToPoint(context, line.start.x, line.start.y)
            CGContextAddLineToPoint(context, line.end.x, line.end.y)
            
        }
    
        CGContextSetRGBStrokeColor(context, 1, 0, 1, 1)
        CGContextSetLineWidth(context, 10)
        CGContextStrokePath(context)
        
    }
    
}
    

