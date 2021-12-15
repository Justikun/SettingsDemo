//
//  SettingController.swift
//  Settings
//
//  Created by Justin Lowry on 12/15/21.
//  Copyright © 2021 Karl Pfister. All rights reserved.
//

import Foundation
import UIKit

class SettingController {
    // Source of Truth
    let settings: [Setting] = {
        let music = Setting(name: "Music", icon: UIImage(named: "iTunes")!, isOn: false)
        let appStore = Setting(name: "App Store", icon: UIImage(named: "appStore")!, isOn: false)
        let iBooks = Setting(name: "Book", icon: UIImage(named: "iBooks")!, isOn: true)
        
        return [music, appStore, iBooks]
    }()
    
    func toggleIsOn(for setting: Setting) {
        setting.isOn = !setting.isOn
    }
}
