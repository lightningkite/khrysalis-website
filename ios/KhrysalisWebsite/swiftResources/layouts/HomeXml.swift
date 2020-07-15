//
// HomeXml.swift
// Created by Khrysalis XML
//

import UIKit
import Khrysalis

public class HomeXml {
    
    public unowned var xmlRoot: UIView!
    public func setup(_ dependency: ViewDependency) -> UIView {
        let view = ScrollViewVertical(frame: .zero)
        view.addSubview(LinearLayout(frame: .zero)) { view in 
            view.orientation = .y
            view.padding = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
            view.gravity = .topLeft
            
            view.addSubview(
                LinearLayout(frame: .zero),
                minimumSize: CGSize(width: 0, height: 0),
                size: CGSize(width: 0, height: 0),
                margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                padding: UIEdgeInsets.zero,
                gravity: .topFill,
                weight: 0
            ) { view in 
                applyColor(view, ResourcesColors.colorPrimary) { c in
                    view.backgroundColor = c
                }
                view.orientation = .y
                view.padding = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
                view.gravity = .centerCenter
                
                view.addSubview(
                    UIView(frame: .zero),
                    minimumSize: CGSize(width: 0, height: 0),
                    size: CGSize(width: 64, height: 64),
                    margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                    padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                    gravity: .centerCenter,
                    weight: 0
                ) { view in 
                }
                
                view.addSubview(
                    UILabel(frame: .zero),
                    minimumSize: CGSize(width: 0, height: 0),
                    size: CGSize(width: 0, height: 0),
                    margin: UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8),
                    padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                    gravity: .centerCenter,
                    weight: 0
                ) { view in 
                    view.font = UIFont.get(size: 24, style: ["bold"])
                    view.textString = "Make an Android App and Convert it to iOS and Web"
                    view.numberOfLines = 0
                    applyColor(view, ResourcesColors.foregroundBar) { c in
                        view.textColor = c
                    }
                    view.textAlignment = .center
                    view.baselineAdjustment = .alignCenters
                }
                
                view.addSubview(
                    UILabel(frame: .zero),
                    minimumSize: CGSize(width: 0, height: 0),
                    size: CGSize(width: 0, height: 0),
                    margin: UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8),
                    padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                    gravity: .centerCenter,
                    weight: 0
                ) { view in 
                    view.font = UIFont.get(size: 20, style: [])
                    view.textString = "Converted output is clean, readable, native code"
                    view.numberOfLines = 0
                    applyColor(view, ResourcesColors.foregroundBar) { c in
                        view.textColor = c
                    }
                    view.textAlignment = .center
                    view.baselineAdjustment = .alignCenters
                }
                
                view.addSubview(
                    UIView(frame: .zero),
                    minimumSize: CGSize(width: 0, height: 0),
                    size: CGSize(width: 64, height: 64),
                    margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                    padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                    gravity: .centerCenter,
                    weight: 0
                ) { view in 
                }
                
                view.addSubview(
                    LinearLayout(frame: .zero),
                    minimumSize: CGSize(width: 0, height: 0),
                    size: CGSize(width: 0, height: 0),
                    margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                    padding: UIEdgeInsets.zero,
                    gravity: .centerCenter,
                    weight: 0
                ) { view in 
                    view.backgroundLayer = ResourcesDrawables.buttonBackground(view)
                    view.orientation = .x
                    view.padding = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
                    view.gravity = .centerCenter
                    
                    view.addSubview(
                        UIImageView(frame: .zero),
                        minimumSize: CGSize(width: 0, height: 0),
                        size: CGSize(width: 0, height: 0),
                        margin: UIEdgeInsets(top: 4, left: 4, bottom: 4, right: 4),
                        padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                        gravity: .centerCenter,
                        weight: 0
                    ) { view in 
                        view.image = UIImage(named: "ic_logo") ?? ResourcesDrawables.icLogo(view).toImage()
                        view.clipsToBounds = true
                        view.contentMode = .scaleAspectFit
                    }
                    
                    view.addSubview(
                        LinearLayout(frame: .zero),
                        minimumSize: CGSize(width: 0, height: 0),
                        size: CGSize(width: 0, height: 0),
                        margin: UIEdgeInsets(top: 4, left: 4, bottom: 4, right: 4),
                        padding: UIEdgeInsets.zero,
                        gravity: .centerCenter,
                        weight: 0
                    ) { view in 
                        view.orientation = .y
                        view.padding = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
                        view.gravity = .centerCenter
                        
                        view.addSubview(
                            UILabel(frame: .zero),
                            minimumSize: CGSize(width: 0, height: 0),
                            size: CGSize(width: 0, height: 0),
                            margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                            padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                            gravity: .centerCenter,
                            weight: 0
                        ) { view in 
                            view.font = UIFont.get(size: 16, style: ["bold"])
                            view.textString = "Open in GitHub"
                            view.numberOfLines = 0
                            applyColor(view, ResourcesColors.accentSelector) { c in
                                view.textColor = c
                            }
                            view.textAlignment = .center
                            view.baselineAdjustment = .alignCenters
                        }
                        
                        view.addSubview(
                            UILabel(frame: .zero),
                            minimumSize: CGSize(width: 0, height: 0),
                            size: CGSize(width: 0, height: 0),
                            margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                            padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                            gravity: .centerCenter,
                            weight: 0
                        ) { view in 
                            view.font = UIFont.get(size: 12, style: ["bold"])
                            view.textString = "GPLv3/Commercial"
                            view.numberOfLines = 0
                            applyColor(view, ResourcesColors.colorAccent) { c in
                                view.textColor = c
                            }
                            view.textAlignment = .center
                            view.baselineAdjustment = .alignCenters
                        }
                        
                    }
                    
                }
                
                view.addSubview(
                    UIView(frame: .zero),
                    minimumSize: CGSize(width: 0, height: 0),
                    size: CGSize(width: 64, height: 64),
                    margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                    padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                    gravity: .centerCenter,
                    weight: 0
                ) { view in 
                }
                
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
                view.orientation = .y
                view.padding = UIEdgeInsets(top: 32, left: 0, bottom: 32, right: 0)
                view.gravity = .centerCenter
                
                view.addSubview(
                    UIImageView(frame: .zero),
                    minimumSize: CGSize(width: 0, height: 0),
                    size: CGSize(width: 64, height: 64),
                    margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                    padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                    gravity: .centerCenter,
                    weight: 0
                ) { view in 
                    view.image = UIImage(named: "placeholder") ?? ResourcesDrawables.placeholder(view).toImage()
                    view.clipsToBounds = true
                    view.contentMode = .scaleAspectFit
                }
                
                view.addSubview(
                    UILabel(frame: .zero),
                    minimumSize: CGSize(width: 0, height: 0),
                    size: CGSize(width: 0, height: 0),
                    margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                    padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                    gravity: .centerCenter,
                    weight: 0
                ) { view in 
                    view.font = UIFont.get(size: 24, style: ["bold"])
                    view.textString = "Code Translation"
                    view.numberOfLines = 0
                    applyColor(view, ResourcesColors.foreground) { c in
                        view.textColor = c
                    }
                    view.textAlignment = .center
                    view.baselineAdjustment = .alignCenters
                }
                
                view.addSubview(
                    UILabel(frame: .zero),
                    minimumSize: CGSize(width: 0, height: 0),
                    size: CGSize(width: 0, height: 0),
                    margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                    padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                    gravity: .centerCenter,
                    weight: 0
                ) { view in 
                    view.font = UIFont.get(size: 16, style: [])
                    view.textString = "The code is translated from Kotlin to Swift and Typescript, resulting in an easily readable copy of your program for the destination platform."
                    view.numberOfLines = 0
                    applyColor(view, ResourcesColors.foreground) { c in
                        view.textColor = c
                    }
                }
                
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
                applyColor(view, ResourcesColors.backgroundHighlight) { c in
                    view.backgroundColor = c
                }
                view.orientation = .y
                view.padding = UIEdgeInsets(top: 32, left: 0, bottom: 32, right: 0)
                view.gravity = .centerCenter
                
                view.addSubview(
                    UILabel(frame: .zero),
                    minimumSize: CGSize(width: 0, height: 0),
                    size: CGSize(width: 0, height: 0),
                    margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                    padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                    gravity: .centerCenter,
                    weight: 0
                ) { view in 
                    view.font = UIFont.get(size: 24, style: ["bold"])
                    view.textString = "Built-in Features"
                    view.numberOfLines = 0
                    applyColor(view, ResourcesColors.foreground) { c in
                        view.textColor = c
                    }
                    view.textAlignment = .center
                    view.baselineAdjustment = .alignCenters
                }
                
                view.addSubview(
                    LinearLayout(frame: .zero),
                    minimumSize: CGSize(width: 0, height: 0),
                    size: CGSize(width: 0, height: 0),
                    margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                    padding: UIEdgeInsets.zero,
                    gravity: .centerCenter,
                    weight: 0
                ) { view in 
                    self.featureList = view
                    view.orientation = .y
                    view.padding = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
                    view.gravity = .centerCenter
                    
                    view.addSubview(
                        UILabel(frame: .zero),
                        minimumSize: CGSize(width: 0, height: 0),
                        size: CGSize(width: 0, height: 0),
                        margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                        padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                        gravity: .centerCenter,
                        weight: 0
                    ) { view in 
                        view.font = UIFont.get(size: 12, style: [])
                        view.textString = "Dynamically Populated"
                        view.numberOfLines = 0
                    }
                    
                }
                
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
                view.orientation = .y
                view.padding = UIEdgeInsets(top: 32, left: 0, bottom: 32, right: 0)
                view.gravity = .centerCenter
                
                view.addSubview(
                    UIImageView(frame: .zero),
                    minimumSize: CGSize(width: 0, height: 0),
                    size: CGSize(width: 64, height: 64),
                    margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                    padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                    gravity: .centerCenter,
                    weight: 0
                ) { view in 
                    view.image = UIImage(named: "placeholder") ?? ResourcesDrawables.placeholder(view).toImage()
                    view.clipsToBounds = true
                    view.contentMode = .scaleAspectFit
                }
                
                view.addSubview(
                    UILabel(frame: .zero),
                    minimumSize: CGSize(width: 0, height: 0),
                    size: CGSize(width: 0, height: 0),
                    margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                    padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                    gravity: .centerCenter,
                    weight: 0
                ) { view in 
                    view.font = UIFont.get(size: 24, style: ["bold"])
                    view.textString = "Direct Integration"
                    view.numberOfLines = 0
                    applyColor(view, ResourcesColors.foreground) { c in
                        view.textColor = c
                    }
                    view.textAlignment = .center
                    view.baselineAdjustment = .alignCenters
                }
                
                view.addSubview(
                    UILabel(frame: .zero),
                    minimumSize: CGSize(width: 0, height: 0),
                    size: CGSize(width: 0, height: 0),
                    margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                    padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                    gravity: .centerCenter,
                    weight: 0
                ) { view in 
                    view.font = UIFont.get(size: 16, style: [])
                    view.textString = "Because your code is directly translated, you can easily use platform-specific libraries. Just write a file for each non-Android platform describing the equivalents for the other platforms!"
                    view.numberOfLines = 0
                    applyColor(view, ResourcesColors.foreground) { c in
                        view.textColor = c
                    }
                }
                
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
                applyColor(view, ResourcesColors.backgroundHighlight) { c in
                    view.backgroundColor = c
                }
                view.orientation = .y
                view.padding = UIEdgeInsets(top: 32, left: 0, bottom: 32, right: 0)
                view.gravity = .centerCenter
                
                view.addSubview(
                    UIImageView(frame: .zero),
                    minimumSize: CGSize(width: 0, height: 0),
                    size: CGSize(width: 64, height: 64),
                    margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                    padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                    gravity: .centerCenter,
                    weight: 0
                ) { view in 
                    view.image = UIImage(named: "placeholder") ?? ResourcesDrawables.placeholder(view).toImage()
                    view.clipsToBounds = true
                    view.contentMode = .scaleAspectFit
                }
                
                view.addSubview(
                    UILabel(frame: .zero),
                    minimumSize: CGSize(width: 0, height: 0),
                    size: CGSize(width: 0, height: 0),
                    margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                    padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                    gravity: .centerCenter,
                    weight: 0
                ) { view in 
                    view.font = UIFont.get(size: 24, style: ["bold"])
                    view.textString = "Current Status"
                    view.numberOfLines = 0
                    applyColor(view, ResourcesColors.foreground) { c in
                        view.textColor = c
                    }
                    view.textAlignment = .center
                    view.baselineAdjustment = .alignCenters
                }
                
                view.addSubview(
                    UILabel(frame: .zero),
                    minimumSize: CGSize(width: 0, height: 0),
                    size: CGSize(width: 0, height: 0),
                    margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                    padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                    gravity: .centerCenter,
                    weight: 0
                ) { view in 
                    view.font = UIFont.get(size: 16, style: [])
                    view.textString = "This project is in early public beta, but is actively being used in Lightning Kite\'s commercial projects. We're happy to help you as best we can!"
                    view.numberOfLines = 0
                    applyColor(view, ResourcesColors.foreground) { c in
                        view.textColor = c
                    }
                }
                
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
                view.orientation = .y
                view.padding = UIEdgeInsets(top: 32, left: 0, bottom: 32, right: 0)
                view.gravity = .centerCenter
                
                view.addSubview(
                    UIImageView(frame: .zero),
                    minimumSize: CGSize(width: 0, height: 0),
                    size: CGSize(width: 64, height: 64),
                    margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                    padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                    gravity: .centerCenter,
                    weight: 0
                ) { view in 
                    view.image = UIImage(named: "placeholder") ?? ResourcesDrawables.placeholder(view).toImage()
                    view.clipsToBounds = true
                    view.contentMode = .scaleAspectFit
                }
                
                view.addSubview(
                    UILabel(frame: .zero),
                    minimumSize: CGSize(width: 0, height: 0),
                    size: CGSize(width: 0, height: 0),
                    margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                    padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                    gravity: .centerCenter,
                    weight: 0
                ) { view in 
                    view.font = UIFont.get(size: 24, style: ["bold"])
                    view.textString = "Get Started"
                    view.numberOfLines = 0
                    applyColor(view, ResourcesColors.foreground) { c in
                        view.textColor = c
                    }
                    view.textAlignment = .center
                    view.baselineAdjustment = .alignCenters
                }
                
                view.addSubview(
                    UILabel(frame: .zero),
                    minimumSize: CGSize(width: 0, height: 0),
                    size: CGSize(width: 0, height: 0),
                    margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                    padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                    gravity: .centerCenter,
                    weight: 0
                ) { view in 
                    view.font = UIFont.get(size: 16, style: [])
                    view.textString = "This website has a full tutorial for trying it out, as well as documentation for each features. The libraries are also documented using standard KDoc comments."
                    view.numberOfLines = 0
                    applyColor(view, ResourcesColors.foreground) { c in
                        view.textColor = c
                    }
                }
                
                view.addSubview(
                    LinearLayout(frame: .zero),
                    minimumSize: CGSize(width: 0, height: 0),
                    size: CGSize(width: 0, height: 0),
                    margin: UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8),
                    padding: UIEdgeInsets.zero,
                    gravity: .centerCenter,
                    weight: 0
                ) { view in 
                    view.orientation = .x
                    view.padding = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
                    view.gravity = .topLeft
                    
                    view.addSubview(
                        UIButtonWithLayer(frame: .zero),
                        minimumSize: CGSize(width: 0, height: 0),
                        size: CGSize(width: 0, height: 0),
                        margin: UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8),
                        padding: UIEdgeInsets.zero,
                        gravity: .topLeft,
                        weight: 0
                    ) { view in 
                        self.tutorial = view
                        view.backgroundLayer = ResourcesDrawables.buttonBackground(view)
                        view.titleLabel?.font = UIFont.get(size: 16, style: ["bold"])
                        view.titleLabel?.textString = "Tutorial"
                        view.titleLabel?.numberOfLines = 0
                        applyColor(view, ResourcesColors.accentSelector) { c in
                            view.titleLabel?.textColor = c
                        }
                        view.titleLabel?.textAlignment = .center
                        view.titleLabel?.baselineAdjustment = .alignCenters
                        view.textString = "Tutorial"
                        applyColor(view, ResourcesColors.accentSelector) { c in
                            view.setTitleColor(c, for: .normal)
                        }
                        view.contentHorizontalAlignment = .center
                        view.textGravity = .centerCenter
                        view.contentMode = .scaleAspectFit
                        view.contentEdgeInsets = UIEdgeInsets(top: 8, left:8, bottom:8, right:8)
                    }
                    
                    view.addSubview(
                        UIButtonWithLayer(frame: .zero),
                        minimumSize: CGSize(width: 0, height: 0),
                        size: CGSize(width: 0, height: 0),
                        margin: UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8),
                        padding: UIEdgeInsets.zero,
                        gravity: .topLeft,
                        weight: 0
                    ) { view in 
                        self.docs = view
                        view.backgroundLayer = ResourcesDrawables.buttonBackground(view)
                        view.titleLabel?.font = UIFont.get(size: 16, style: ["bold"])
                        view.titleLabel?.textString = ResourcesStrings.docs
                        view.titleLabel?.numberOfLines = 0
                        applyColor(view, ResourcesColors.accentSelector) { c in
                            view.titleLabel?.textColor = c
                        }
                        view.titleLabel?.textAlignment = .center
                        view.titleLabel?.baselineAdjustment = .alignCenters
                        view.textString = ResourcesStrings.docs
                        applyColor(view, ResourcesColors.accentSelector) { c in
                            view.setTitleColor(c, for: .normal)
                        }
                        view.contentHorizontalAlignment = .center
                        view.textGravity = .centerCenter
                        view.contentMode = .scaleAspectFit
                        view.contentEdgeInsets = UIEdgeInsets(top: 8, left:8, bottom:8, right:8)
                    }
                    
                }
                
            }
            
        }
        xmlRoot = view
        return view
    }
    
    public unowned var featureList: LinearLayout!
    public unowned var docs: UIButtonWithLayer!
    public unowned var tutorial: UIButtonWithLayer!
    
}
