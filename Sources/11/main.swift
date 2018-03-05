//
//  main.swift
//  Wolverine
//
//  Created by Svyat Zubyak on 1/22/18.
//  Copyright © 2018 Code Elves Inc. All rights reserved.
//

import Foundation
import UIKit

/*
 
 We run a separate App Delegat for testing purposes.
 It stubs out the root view controller so we don't have to launch it and can test the app without all of the extra cruft.
 
 */

private func delegateClassName() -> String? {
    return NSClassFromString("XCTestCase") == nil ? NSStringFromClass(AppDelegate.self) : nil
}


UIApplicationMain(CommandLine.argc, UnsafeMutableRawPointer(CommandLine.unsafeArgv).bindMemory(to: UnsafeMutablePointer<Int8>.self, capacity: Int(CommandLine.argc)), nil, delegateClassName())
