//
//  CenterVCDelegate.swift
//  hitchhkr-dev
//
//  Created by Ben Makusha on 8/25/17.
//  Copyright © 2017 Ben Makusha. All rights reserved.
//

import UIKit

protocol CenterVCDelegate {
    func toggleLeftPanel()
    func addLeftPanelViewController()
    func animateLeftPanel(shouldExpand: Bool)
}
