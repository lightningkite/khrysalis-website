//
// DocsVG.swift
// Created by Khrysalis Prototype Generator
// Sections of this file can be replaces if the marker, '(overwritten on flow generation)', is left in place.
//
package com.lightningkite.khrysaliswebsite.vg

//--- Imports

import android.widget.*
import android.view.*
import com.lightningkite.khrysalis.*
import com.lightningkite.khrysalis.views.*
import com.lightningkite.khrysalis.observables.*
import com.lightningkite.khrysalis.observables.binding.*
import com.lightningkite.khrysaliswebsite.R
import com.lightningkite.khrysaliswebsite.layouts.*

//--- Name (overwritten on flow generation)
@Suppress("NAME_SHADOWING")
class DocsVG(
    //--- Dependencies (overwritten on flow generation)
    @unowned val stack: ObservableStack<ViewGenerator>
    //--- Extends (overwritten on flow generation)
) : ViewGenerator() {
    
    
    //--- Title (overwritten on flow generation)
    override val title: String get() = "Docs"
    
    //--- Generate Start (overwritten on flow generation)
    override fun generate(dependency: ViewDependency): View {
        val xml = DocsXml()
        val view = xml.setup(dependency)
        
        //--- Set Up xml.filter (overwritten on flow generation)
        
        //--- Set Up xml.articles (overwritten on flow generation)
        xml.articles.bind(
            data = ConstantObservableProperty(listOf(1, 2, 3, 4)),
            defaultValue = 1,
            makeView = label@ { observable ->
                //--- Make Subview For xml.articles (overwritten on flow generation)
                val cellXml = ComponentRowQuestionXml()
                val cellView = cellXml.setup(dependency)
                
                //--- Set Up cellXml.container (overwritten on flow generation)
                cellXml.container.onClick { this.cellXmlContainerClick() }
                
                //--- Set Up cellXml.question (overwritten on flow generation)
                cellXml.question.bindString(ConstantObservableProperty("How do I do all the things?  It seems really hard and I need help"))
                //--- End Make Subview For xml.articles (overwritten on flow generation)
                return@label cellView
            }
        )
        
        //--- Generate End (overwritten on flow generation)
        
        return view
    }
    
    //--- Init
    
    init {
    //--- Init End
    }
    
    //--- Actions
    
    
    //--- Action cellXmlContainerClick (overwritten on flow generation)
    fun cellXmlContainerClick() {
        stack.push(ArticleVG(stack = this.stack))
    }
    
    //--- Body End
}
