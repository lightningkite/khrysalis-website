//Package: com.lightningkite.khrysaliswebsite.vg
//Converted using Khrysalis2

import Foundation
import Khrysalis
import RxSwift
import RxRelay



public class TabsVG: ViewGenerator {
    
    public var root: ObservableStack<ViewGenerator>
    
    public var tabs: ObservableStack<ViewGenerator>
    override public var title: String {
        get {
            return "Tabs"
        }
    }
    
    override public func generate(dependency: ViewDependency) -> View {
        var xml = TabsXml()
        var view = xml.setup(dependency)
        xml.back.onClick{ () in 
            self.backClick()
        }
        xml.title.bindString(ConstantObservableProperty("View Title"))
        xml.rootStackHolder.bindStack(dependency, tabs)
        xml.home.onClick{ () in 
            self.homeClick()
        }
        xml.setupKhrysalis.onClick{ () in 
            self.setupKhrysalisClick()
        }
        xml.faq.onClick{ () in 
            self.faqClick()
        }
        xml.docs.onClick{ () in 
            self.docsClick()
        }
        return view
    }
    override public func generate(_ dependency: ViewDependency) -> View {
        return generate(dependency: dependency)
    }
    
    public func backClick() -> Void {
        if self.tabs.pop() {
        } else if self.root.pop() {
        }
    }
    
    public func homeClick() -> Void {
        self.tabs.reset(HomeVG())
    }
    
    public func setupKhrysalisClick() -> Void {
        self.tabs.reset(SetupVG())
    }
    
    public func faqClick() -> Void {
        self.tabs.reset(FaqVG(stack: self.tabs))
    }
    
    public func docsClick() -> Void {
        self.tabs.reset(DocsVG(stack: self.tabs))
    }
    
    public init(root: ObservableStack<ViewGenerator>) {
        self.root = root
        let tabs: ObservableStack<ViewGenerator> = ObservableStack()
        self.tabs = tabs
        super.init()
        self.tabs.reset(HomeVG())
    }
    convenience public init(_ root: ObservableStack<ViewGenerator>) {
        self.init(root: root)
    }
}
 
