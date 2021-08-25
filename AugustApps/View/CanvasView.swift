//
//  CanvasView.swift
//  AugustApps
//
//  Created by Alexey Yarov on 25/08/2021.
//  Copyright © 2021 Alexey Yarov. All rights reserved.
//

import UIKit

class Canvas: UIView {
    
   private var lines = [Line]()
    private var strokeColor: UIColor = .black
    private var strokeWidth: Float = 1
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        guard let context = UIGraphicsGetCurrentContext() else {return}
        
        lines.forEach{ line in
            context.setStrokeColor(line.color.cgColor)
            context.setLineWidth(CGFloat(line.width))
            context.setLineCap(.round)
            for (index, point) in line.points.enumerated(){
            if index == 0 {
                context.move(to: point)
            } else {
                context.addLine(to: point)
                
                }
            }
            context.strokePath()
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        super.touchesBegan(touches, with: event)
        lines.append(Line.init (width: strokeWidth, color: strokeColor, points: []))
        }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesMoved(touches, with: event)
        guard let point = touches.first?.location(in: nil) else {return}
        //print(point) - getting coordinates
        guard var lastLine = lines.popLast() else {return}
        lastLine.points.append(point)
        lines.append(lastLine)
        
        setNeedsDisplay()
        }
    
    func undo(){
        _ = lines.popLast()
        setNeedsDisplay()
    }
    func clear() {
        lines.removeAll()
        setNeedsDisplay()
    }
    
    func setStrokeColor(color: UIColor){
        strokeColor = color
    }
    
    func setStrokeWidth (width: Float){
        strokeWidth = width
    }
    
}
