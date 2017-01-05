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
    let record = Record() ※ {(r: inout Record) in r.name = "RecordName"}

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        if let contentView = window.contentView {
            nameField.frame = contentView.bounds
            nameField.autoresizingMask = [.viewWidthSizable, .viewHeightSizable]
            contentView.addSubview(nameField)
        }

        NSLog("%@", "\(record.name)")
    }
}

struct Record {
    var name: String?
}

