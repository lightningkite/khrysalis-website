//
// LinkVG.swift
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
class LinkVG(
    //--- Dependencies (overwritten on flow generation)
    val destination: String,
    val label: String
    //--- Extends (overwritten on flow generation)
) : ViewGenerator() {
    
    
    //--- Title (overwritten on flow generation)
    override val title: String get() = "Link"
    
    //--- Generate Start (overwritten on flow generation)
    override fun generate(dependency: ViewDependency): View {
        val xml = LinkXml()
        val view = xml.setup(dependency)
        
        //--- Set Up xml.content
        xml.content.text = label
        xml.content.onClick {
            dependency.openUrl(destination)
        }
        
        //--- Generate End (overwritten on flow generation)
        
        return view
    }
    
    //--- Init
    
    init {
    //--- Init End
    }
    
    //--- Actions
    
    //--- Action contentClick (overwritten on flow generation)
    fun contentClick() {
    }
    
    //--- Body End
}
