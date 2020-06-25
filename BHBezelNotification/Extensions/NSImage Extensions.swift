//
//  NSImage Extensions.swift
//  BH Bezel Notification
//
//  Created by Ben Leggiero on 2017-11-10.
//  Copyright © 2017 Ben Leggiero. All rights reserved.
//

import Foundation



public extension NSImage {
    static func roundedRectMask(size: NSSize, cornerRadius: CGFloat) -> NSImage {
        let maskImage = NSImage(size: size, flipped: false) { rect in
            let bezierPath = NSBezierPath(roundedRect: rect, xRadius: cornerRadius, yRadius: cornerRadius)
            NSColor.black.set()
            bezierPath.fill()
            return true
        }
        
        maskImage.capInsets = NSEdgeInsets(top: cornerRadius, left: cornerRadius, bottom: cornerRadius, right: cornerRadius)
        maskImage.resizingMode = .stretch
        
        return maskImage
    }
}
