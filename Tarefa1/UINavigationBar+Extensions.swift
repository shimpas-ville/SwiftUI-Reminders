//
//  UINavigationBar+Extensions.swift
//  Tarefa1
//
//  Created by JOCEMAR NICOLODI JUNIOR on 01/11/23.
//

import Foundation
import UIKit

extension UINavigationBar {
    
    static func setNavigationTitleColor(to color: UIColor) {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: color]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: color]
    }
    
}
