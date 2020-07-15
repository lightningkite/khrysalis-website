//
// RootXml.swift
// Created by Khrysalis XML
//

import UIKit
import Khrysalis

public class RootXml {
    
    public unowned var xmlRoot: UIView!
    public func setup(_ dependency: ViewDependency) -> UIView {
        let view = FrameLayout(frame: .zero)
        applyColor(view, ResourcesColors.background) { c in
            view.backgroundColor = c
        }
        view.padding = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        view.addSubview(
            SwapView(frame: .zero),
            minimumSize: CGSize(width: 0, height: 0),
            size: CGSize(width: 0, height: 0),
            margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
            padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
            gravity: .fillFill
        ) { view in 
            self.rootStackHolder = view
        }
        
        view.addSubview(
            SwapView(frame: .zero),
            minimumSize: CGSize(width: 0, height: 0),
            size: CGSize(width: 0, height: 0),
            margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
            padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
            gravity: .fillFill
        ) { view in 
            self.dialogStackHolder = view
        }
        
        xmlRoot = view
        return view
    }
    
    public unowned var rootStackHolder: SwapView!
    public unowned var dialogStackHolder: SwapView!
    
}
