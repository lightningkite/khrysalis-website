//
// TextXml.kt
// Created by Khrysalis XML Android
//
package com.lightningkite.khrysaliswebsite.layouts

import android.widget.*
import android.view.*
import com.lightningkite.khrysalis.views.*
import com.lightningkite.khrysaliswebsite.R

class TextXml {

    lateinit var content: TextView
    
    
    lateinit var xmlRoot: View

    fun setup(dependency: ViewDependency): View {
        val view = LayoutInflater.from(dependency.context).inflate(R.layout.text, null, false)
        return setup(view)
    }
    fun setup(view: View): View {
        xmlRoot = view
        content = view.findViewById<TextView>(R.id.content)
        
        
        
        return view
    }
}