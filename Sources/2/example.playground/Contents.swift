//: Playground - noun: a place where people can play

import UIKit

let vc = UIViewController()
//vc.prefersStatusBarHidden = true
print("statusBarHidded \(vc.prefersStatusBarHidden)")

class TestViewController: UIViewController {
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

let testVC = TestViewController()
print("statusBarHidded \(testVC.prefersStatusBarHidden)")
