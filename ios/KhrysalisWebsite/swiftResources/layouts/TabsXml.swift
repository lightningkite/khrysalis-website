//
// TabsXml.swift
// Created by Khrysalis XML
//

import UIKit
import Khrysalis

public class TabsXml {
    
    public unowned var xmlRoot: UIView!
    public func setup(_ dependency: ViewDependency) -> UIView {
        let view = LinearLayout(frame: .zero)
        view.orientation = .y
        view.padding = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        view.gravity = .topLeft
        
        view.addSubview(
            LinearLayout(frame: .zero),
            minimumSize: CGSize(width: 0, height: 0),
            size: CGSize(width: 0, height: 48),
            margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
            padding: UIEdgeInsets.zero,
            gravity: .topFill,
            weight: 0
        ) { view in 
            applyColor(view, ResourcesColors.colorPrimary) { c in
                view.backgroundColor = c
            }
            view.orientation = .x
            view.padding = UIEdgeInsets(top: 4, left: 4, bottom: 4, right: 4)
            view.gravity = .centerCenter
            
            view.addSubview(
                UIButtonWithLayer(frame: .zero),
                minimumSize: CGSize(width: 0, height: 0),
                size: CGSize(width: 0, height: 0),
                margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                padding: UIEdgeInsets.zero,
                gravity: .centerCenter,
                weight: 0
            ) { view in 
                self.back = view
                view.titleLabel?.font = UIFont.get(size: 12, style: [])
                view.titleLabel?.numberOfLines = 0
                view.contentHorizontalAlignment = .center
                view.iconPosition = .top
                view.iconLayer = ResourcesDrawables.icArrowBack(view)
                view.contentMode = .scaleAspectFit
                view.contentEdgeInsets = UIEdgeInsets(top: 4, left:4, bottom:4, right:4)
            }
            
            view.addSubview(
                UILabel(frame: .zero),
                minimumSize: CGSize(width: 0, height: 0),
                size: CGSize(width: 0, height: 0),
                margin: UIEdgeInsets(top: 4, left: 4, bottom: 4, right: 4),
                padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                gravity: .centerCenter,
                weight: 1.0
            ) { view in 
                self.title = view
                view.font = UIFont.get(size: 20, style: ["bold"])
                view.numberOfLines = 0
                applyColor(view, ResourcesColors.foregroundBar) { c in
                    view.textColor = c
                }
            }
            
        }
        
        view.addSubview(
            SwapView(frame: .zero),
            minimumSize: CGSize(width: 0, height: 0),
            size: CGSize(width: 0, height: 0),
            margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
            padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
            gravity: .topFill,
            weight: 1.0
        ) { view in 
            self.rootStackHolder = view
        }
        
        view.addSubview(
            LinearLayout(frame: .zero),
            minimumSize: CGSize(width: 0, height: 0),
            size: CGSize(width: 0, height: 0),
            margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
            padding: UIEdgeInsets.zero,
            gravity: .topFill,
            weight: 0
        ) { view in 
            view.orientation = .x
            view.padding = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
            view.gravity = .topLeft
            
            view.addSubview(
                ToggleButton(frame: .zero),
                minimumSize: CGSize(width: 0, height: 0),
                size: CGSize(width: 0, height: 0),
                margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                padding: UIEdgeInsets.zero,
                gravity: .topLeft,
                weight: 1.0
            ) { view in 
                self.home = view
                view.backgroundLayer = ResourcesDrawables.tabBackground(view)
                view.titleLabel?.font = UIFont.get(size: 10, style: [])
                view.titleLabel?.numberOfLines = 0
                applyColor(view, ResourcesColors.foregroundBar) { c in
                    view.titleLabel?.textColor = c
                }
                applyColor(view, ResourcesColors.foregroundBar) { c in
                    view.setTitleColor(c, for: .normal)
                }
                view.contentHorizontalAlignment = .center
                view.iconPosition = .top
                view.iconLayer = ResourcesDrawables.icHome(view)
                view.contentMode = .scaleAspectFit
                view.contentEdgeInsets = UIEdgeInsets(top: 8, left:8, bottom:8, right:8)
                view.textOff = ResourcesStrings.home
                view.setTitle(ResourcesStrings.home, for: .normal)
                view.textOn = ResourcesStrings.home
            }
            
            view.addSubview(
                ToggleButton(frame: .zero),
                minimumSize: CGSize(width: 0, height: 0),
                size: CGSize(width: 0, height: 0),
                margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                padding: UIEdgeInsets.zero,
                gravity: .topLeft,
                weight: 1.0
            ) { view in 
                self.setupKhrysalis = view
                view.backgroundLayer = ResourcesDrawables.tabBackground(view)
                view.titleLabel?.font = UIFont.get(size: 10, style: [])
                view.titleLabel?.numberOfLines = 0
                applyColor(view, ResourcesColors.foregroundBar) { c in
                    view.titleLabel?.textColor = c
                }
                applyColor(view, ResourcesColors.foregroundBar) { c in
                    view.setTitleColor(c, for: .normal)
                }
                view.contentHorizontalAlignment = .center
                view.iconPosition = .top
                view.iconLayer = ResourcesDrawables.icSettings(view)
                view.contentMode = .scaleAspectFit
                view.contentEdgeInsets = UIEdgeInsets(top: 8, left:8, bottom:8, right:8)
                view.textOff = ResourcesStrings.setUp
                view.setTitle(ResourcesStrings.setUp, for: .normal)
                view.textOn = ResourcesStrings.setUp
            }
            
            view.addSubview(
                ToggleButton(frame: .zero),
                minimumSize: CGSize(width: 0, height: 0),
                size: CGSize(width: 0, height: 0),
                margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                padding: UIEdgeInsets.zero,
                gravity: .topLeft,
                weight: 1.0
            ) { view in 
                self.faq = view
                view.backgroundLayer = ResourcesDrawables.tabBackground(view)
                view.titleLabel?.font = UIFont.get(size: 10, style: [])
                view.titleLabel?.numberOfLines = 0
                applyColor(view, ResourcesColors.foregroundBar) { c in
                    view.titleLabel?.textColor = c
                }
                applyColor(view, ResourcesColors.foregroundBar) { c in
                    view.setTitleColor(c, for: .normal)
                }
                view.contentHorizontalAlignment = .center
                view.iconPosition = .top
                view.iconLayer = ResourcesDrawables.icQuestionAnswer(view)
                view.contentMode = .scaleAspectFit
                view.contentEdgeInsets = UIEdgeInsets(top: 8, left:8, bottom:8, right:8)
                view.textOff = ResourcesStrings.faq
                view.setTitle(ResourcesStrings.faq, for: .normal)
                view.textOn = ResourcesStrings.faq
            }
            
            view.addSubview(
                ToggleButton(frame: .zero),
                minimumSize: CGSize(width: 0, height: 0),
                size: CGSize(width: 0, height: 0),
                margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                padding: UIEdgeInsets.zero,
                gravity: .topLeft,
                weight: 1.0
            ) { view in 
                self.docs = view
                view.backgroundLayer = ResourcesDrawables.tabBackground(view)
                view.titleLabel?.font = UIFont.get(size: 10, style: [])
                view.titleLabel?.numberOfLines = 0
                applyColor(view, ResourcesColors.foregroundBar) { c in
                    view.titleLabel?.textColor = c
                }
                applyColor(view, ResourcesColors.foregroundBar) { c in
                    view.setTitleColor(c, for: .normal)
                }
                view.contentHorizontalAlignment = .center
                view.iconPosition = .top
                view.iconLayer = ResourcesDrawables.icCode(view)
                view.contentMode = .scaleAspectFit
                view.contentEdgeInsets = UIEdgeInsets(top: 8, left:8, bottom:8, right:8)
                view.textOff = ResourcesStrings.docs
                view.setTitle(ResourcesStrings.docs, for: .normal)
                view.textOn = ResourcesStrings.docs
            }
            
        }
        
        xmlRoot = view
        return view
    }
    
    public unowned var setupKhrysalis: ToggleButton!
    public unowned var docs: ToggleButton!
    public unowned var rootStackHolder: SwapView!
    public unowned var faq: ToggleButton!
    public unowned var back: UIButtonWithLayer!
    public unowned var title: UILabel!
    public unowned var home: ToggleButton!
    
}
