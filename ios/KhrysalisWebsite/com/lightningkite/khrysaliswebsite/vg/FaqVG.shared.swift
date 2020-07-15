//Package: com.lightningkite.khrysaliswebsite.vg
//Converted using Khrysalis2

import Foundation
import Khrysalis
import RxSwift
import RxRelay



public class FaqVG: ViewGenerator {
    
    public var stack: ObservableStack<ViewGenerator>
    
    override public var title: String {
        get {
            return "Faq"
        }
    }
    
    override public func generate(dependency: ViewDependency) -> View {
        var xml = FaqXml()
        var view = xml.setup(dependency)
        xml.questions.bind(data: ConstantObservableProperty([1, 2, 3, 4]), defaultValue: 1, makeView: { (observable) in 
            var cellXml = ComponentRowQuestionXml()
            var cellView = cellXml.setup(dependency)
            cellXml.container.onClick{ () in 
                self.cellXmlContainerClick()
            }
            cellXml.question.bindString(ConstantObservableProperty("How do I do all the things?  It seems really hard and I need help"))
            return cellView
        })
        return view
    }
    override public func generate(_ dependency: ViewDependency) -> View {
        return generate(dependency: dependency)
    }
    
    public func cellXmlContainerClick() -> Void {
        stack.push(ArticleVG(stack: self.stack))
    }
    
    public init(stack: ObservableStack<ViewGenerator>) {
        self.stack = stack
        super.init()
    }
    convenience public init(_ stack: ObservableStack<ViewGenerator>) {
        self.init(stack: stack)
    }
}
 
