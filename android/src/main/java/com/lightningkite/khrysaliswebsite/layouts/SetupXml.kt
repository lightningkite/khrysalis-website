//
// SetupXml.kt
// Created by Khrysalis XML Android
//
package com.lightningkite.khrysaliswebsite.layouts

import android.widget.*
import android.view.*
import com.lightningkite.khrysalis.views.*
import com.lightningkite.khrysaliswebsite.R

class SetupXml {

    
    
    
    lateinit var xmlRoot: View

    fun setup(dependency: ViewDependency): View {
        val view = LayoutInflater.from(dependency.context).inflate(R.layout.setup, null, false)
        return setup(view)
    }
    fun setup(view: View): View {
        xmlRoot = view
        
        
        
        
        return view
    }
}