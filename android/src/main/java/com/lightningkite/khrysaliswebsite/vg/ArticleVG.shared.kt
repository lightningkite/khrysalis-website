//
// ArticleVG.swift
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
import com.lightningkite.khrysalis.views.geometry.AlignPair
import com.lightningkite.khrysaliswebsite.R
import com.lightningkite.khrysaliswebsite.layouts.*
import com.lightningkite.khrysaliswebsite.models.Article

//--- Name (overwritten on flow generation)
@Suppress("NAME_SHADOWING")
class ArticleVG(
    //--- Dependencies (overwritten on flow generation)
    val article: Article
    //--- Extends (overwritten on flow generation)
) : ViewGenerator() {
    
    
    //--- Title (overwritten on flow generation)
    override val title: String get() = "Article"
    
    //--- Generate Start (overwritten on flow generation)
    override fun generate(dependency: ViewDependency): View {
        val xml = ArticleXml()
        val view = xml.setup(dependency)
        
        //--- Set Up xml.title
        xml.title.text = article.title
        
        //--- Set Up xml.subtitle
        xml.subtitle.text = article.subtitle
        
        //--- Set Up xml.content
        for(part in article.parts){
            xml.content.addView(part.generate(dependency), xml.content.params(gravity = AlignPair.topFill))
        }

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
