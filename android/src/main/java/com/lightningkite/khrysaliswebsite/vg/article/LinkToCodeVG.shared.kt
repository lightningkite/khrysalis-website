//
// LinkToCodeVG.swift
// Created by Khrysalis Prototype Generator
// Sections of this file can be replaces if the marker, '(overwritten on flow generation)', is left in place.
//
package com.lightningkite.khrysaliswebsite.vg.article

//--- Imports

import android.widget.*
import android.view.*
import com.lightningkite.khrysalis.*
import com.lightningkite.khrysalis.views.*
import com.lightningkite.khrysalis.observables.*
import com.lightningkite.khrysalis.observables.binding.*
import com.lightningkite.khrysaliswebsite.R
import com.lightningkite.khrysaliswebsite.layouts.*
import com.lightningkite.khrysaliswebsite.models.GitHubFile
import com.lightningkite.khrysaliswebsite.vg.CodeViewerVG

//--- Name (overwritten on flow generation)
@Suppress("NAME_SHADOWING")
class LinkToCodeVG(
    //--- Dependencies (overwritten on flow generation)
    val files: List<GitHubFile>,
    val label: String
    //--- Extends
) : ContentViewGenerator() {
    
    //--- Provides stack
    
    //--- Title (overwritten on flow generation)
    override val title: String get() = "Link To Code"
    
    //--- Generate Start (overwritten on flow generation)
    override fun generate(dependency: ViewDependency): View {
        val xml = LinkToCodeXml()
        val view = xml.setup(dependency)
        
        //--- Set Up xml.content
        xml.content.text = label
        xml.content.onClick { this.contentClick() }
        
        //--- Generate End (overwritten on flow generation)
        
        return view
    }
    
    //--- Init
    
    init {
    //--- Init End
    }
    
    //--- Actions
    
    //--- Action contentClick
    fun contentClick() {
        stack.push(CodeViewerVG(files))
    }
    
    //--- Body End
}
