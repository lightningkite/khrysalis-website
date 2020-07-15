//Package: com.lightningkite.khrysaliswebsite.vg
//Converted using Khrysalis2

import Foundation
import Khrysalis
import RxSwift
import RxRelay



public class ArticleVG: ViewGenerator {
    
    public var stack: ObservableStack<ViewGenerator>
    
    override public var title: String {
        get {
            return "Article"
        }
    }
    
    override public func generate(dependency: ViewDependency) -> View {
        var xml = ArticleXml()
        var view = xml.setup(dependency)
        xml.question.bindString(ConstantObservableProperty("This is my really long and wandering question please help?"))
        return view
    }
    override public func generate(_ dependency: ViewDependency) -> View {
        return generate(dependency: dependency)
    }
    
    public init(stack: ObservableStack<ViewGenerator>) {
        self.stack = stack
        super.init()
    }
    convenience public init(_ stack: ObservableStack<ViewGenerator>) {
        self.init(stack: stack)
    }
}
 
