//
// FaqVG.swift
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
import com.lightningkite.khrysaliswebsite.models.Article
import com.lightningkite.khrysaliswebsite.models.Articles

//--- Name (overwritten on flow generation)
@Suppress("NAME_SHADOWING")
class FaqVG(
    //--- Dependencies (overwritten on flow generation)
    @unowned val stack: ObservableStack<ViewGenerator>
    //--- Extends (overwritten on flow generation)
) : ViewGenerator() {
    
    
    //--- Properties
    val filter = StandardObservableProperty("")
    
    //--- Title (overwritten on flow generation)
    override val title: String get() = "Faq"
    
    //--- Generate Start (overwritten on flow generation)
    override fun generate(dependency: ViewDependency): View {
        val xml = FaqXml()
        val view = xml.setup(dependency)
        
        //--- Set Up xml.filter
        xml.filter.bindString(filter)
        
        //--- Set Up xml.questions
        xml.questions.bind(
            data = filter.map { f ->
                val parts = f.split(' ')
                Articles.faq.filter { parts.all { part -> it.contains(part) } }
            },
            defaultValue = Article.empty,
            makeView = label@ { observable ->
                //--- Make Subview For xml.questions
                val cellVg = RowArticleVG(articleObservable = observable, stack = this.stack)
                val cellView = cellVg.generate(dependency)
                //--- End Make Subview For xml.questions (overwritten on flow generation)
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
    
    //--- Body End
}
