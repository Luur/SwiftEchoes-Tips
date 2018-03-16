//: Playground - noun: a place where people can play

import UIKit


struct GradientComponents {
    var colors: [CGColor]
    var locations: [NSNumber]
    var startPoint: CGPoint
    var endPoint: CGPoint
}

extension UINavigationBar {

    func applyNavigationBarGradient(with components: GradientComponents) {
    
        let size = CGSize(width: UIScreen.main.bounds.size.width, height: 1)
        let gradient = CAGradientLayer()
        gradient.frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        
        gradient.colors = components.colors
        gradient.locations = components.locations
        gradient.startPoint = components.startPoint
        gradient.endPoint = components.endPoint
    
        UIGraphicsBeginImageContext(gradient.bounds.size)
        gradient.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.barTintColor = UIColor(patternImage: image!)
    }
}

let viewController = UIViewController()
let navigationController = UINavigationController(rootViewController: viewController)
let colors = [UIColor.red.cgColor, UIColor.green.cgColor]
let components = GradientComponents(colors: colors, locations: [0, 1], startPoint: CGPoint(x: 2.42, y: 0.28), endPoint: CGPoint(x: -0.08, y: 0.5))
navigationController.navigationBar.applyNavigationBarGradient(with: components)
