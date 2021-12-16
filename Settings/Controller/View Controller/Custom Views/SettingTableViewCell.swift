//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Justin Lowry on 12/15/21.
//  Copyright © 2021 Karl Pfister. All rights reserved.
//

import UIKit

protocol SettingCellDelegate: AnyObject {
    // Step one: Declare protocol
    func settingSwitchToggled(for cell: SettingTableViewCell)
}

class SettingTableViewCell: UITableViewCell {
    // MARK: - Outlets
    @IBOutlet weak var settingImageView: UIImageView!
    @IBOutlet weak var settingNameLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!

    // Step two: Create the delegate
    weak var delegate: SettingCellDelegate?
    
    func updateViews(with setting: Setting) {
        settingNameLabel.text = setting.name
        settingImageView.image = setting.icon
        settingSwitch.isOn = setting.isOn
        
        backgroundColor = setting.isOn ? .cyan : .white
    }
    
    
    
    
    
    // MARK: - Actions
    @IBAction func settingSwitchToggled(_ sender: UISwitch) {
        delegate?.settingSwitchToggled(for: self)
    }
}
