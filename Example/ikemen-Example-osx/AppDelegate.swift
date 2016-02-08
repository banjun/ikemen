//
//  AppDelegate.swift
//  ikemen-Example-osx
//
//  Created by BAN Jun on 2016/02/08.
//  Copyright © 2016年 CocoaPods. All rights reserved.
//

import Cocoa
import Ikemen


@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    let nameField = NSTextField() ※ {tf in tf.stringValue = "Name"}

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application

        if let contentView = window.contentView {
            nameField.frame = contentView.bounds
            nameField.autoresizingMask = [.ViewWidthSizable, .ViewHeightSizable]
            contentView.addSubview(nameField)
        }
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

