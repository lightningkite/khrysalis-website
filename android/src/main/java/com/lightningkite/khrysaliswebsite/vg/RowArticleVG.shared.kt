//
// RowArticleVG.swift
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

//--- Name (overwritten on flow generation)
@Suppress("NAME_SHADOWING")
class RowArticleVG(
    //--- Dependencies (overwritten on flow generation)
    val articleObservable: ObservableProperty<Article>,
    @unowned val stack: ObservableStack<ViewGenerator>
    //--- Extends (overwritten on flow generation)
) : ViewGenerator() {
    
    
    //--- Title (overwritten on flow generation)
    override val title: String get() = "Row Article"
    
    //--- Generate Start (overwritten on flow generation)
    override fun generate(dependency: ViewDependency): View {
        val xml = RowArticleXml()
        val view = xml.setup(dependency)
        
        //--- Set Up xml.container (overwritten on flow generation)
        xml.container.onClick { this.containerClick() }
        
        //--- Set Up xml.title
        xml.title.bindString(articleObservable.map { it.title })
        
        //--- Set Up xml.subtitle
        xml.subtitle.bindString(articleObservable.map { it.subtitle })
        
        //--- Generate End (overwritten on flow generation)
        
        return view
    }
    
    //--- Init
    
    init {
    //--- Init End
    }
    
    //--- Actions
    
    //--- Action containerClick
    fun containerClick() {
        stack.push(ArticleVG(article = articleObservable.value))
    }
    
    //--- Body End
}
