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

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application

        if let contentView = window.contentView {
            nameField.frame = contentView.bounds
            nameField.autoresizingMask = [.viewWidthSizable, .viewHeightSizable]
            contentView.addSubview(nameField)
        }
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

