//: Playground - noun: a place where people can play

import UIKit

extension UIView {
    func fadeTransition(_ duration: CFTimeInterval) {
        let animation = CATransition()
        animation.timingFunction = CAMediaTimingFunction(name:
            kCAMediaTimingFunctionEaseInEaseOut)
        animation.type = kCATransitionFade
        animation.duration = duration
        layer.add(animation, forKey: kCATransitionFade)
    }
}

let label = UILabel(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
label.text = "Test content"

label.fadeTransition(1)
label.text = "Updated test content with animation"
