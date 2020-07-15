//
// ResourcesColors.swift
// Created by Khrysalis
//

import Foundation
import UIKit
import Khrysalis


public enum ResourcesColors {
    static let transparent = UIColor.clear
    static let black = UIColor.black
    static let white = UIColor.white
    static let colorPrimary: UIColor = UIColor(argb: 0xFF12052a)
    static let colorPrimaryDark: UIColor = UIColor(argb: 0xFF070212)
    static let colorPrimaryHighlight: UIColor = UIColor(argb: 0xFF1B0740)
    static let colorAccent: UIColor = UIColor(argb: 0xFF00ea7a)
    static let colorAccentHighlight: UIColor = UIColor(argb: 0xFF02A557)
    static let foreground: UIColor = UIColor(argb: 0xFF111111)
    static let background: UIColor = UIColor(argb: 0xFFEEEEEE)
    static let backgroundHighlight: UIColor = UIColor(argb: 0xFFDDDDDD)
    static let foregroundBar: UIColor = UIColor(argb: 0xFFEEEEEE)
    static let backgroundBar: UIColor = ResourcesColors.colorPrimary
    static let backgroundBarHighlight: UIColor = ResourcesColors.colorPrimaryHighlight
    static func primarySelector(_ state: UIControl.State) -> UIColor {
        if state.contains(.selected) {
            return ResourcesColors.colorPrimaryHighlight
        }
        if state.contains(.highlighted) {
            return ResourcesColors.colorPrimaryHighlight
        }
        return ResourcesColors.colorPrimary
        return UIColor.white
    }
    static func accentSelector(_ state: UIControl.State) -> UIColor {
        if state.contains(.selected) {
            return ResourcesColors.colorAccentHighlight
        }
        if state.contains(.highlighted) {
            return ResourcesColors.colorAccentHighlight
        }
        return ResourcesColors.colorAccent
        return UIColor.white
    }
}
