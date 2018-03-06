//
//  NavigationBarExtention.swift
//  Bumblebee
//
//  Created by Svyat Zubyak on 3/7/17.
//  Copyright © 2017 Code Elves Inc. All rights reserved.
//

import Foundation
import UIKit

extension UINavigationBar {
    
    func transparentNavigationBar() {
        self.setBackgroundImage(UIImage(), for: .default)
        self.shadowImage = UIImage()
    }
    
    func opaqueNavigationBar() {
        self.shadowImage = nil
        self.setBackgroundImage(nil, for: .default)
    }
}
