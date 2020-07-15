//
// HomeXml.kt
// Created by Khrysalis XML Android
//
package com.lightningkite.khrysaliswebsite.layouts

import android.widget.*
import android.view.*
import com.lightningkite.khrysalis.views.*
import com.lightningkite.khrysaliswebsite.R

class HomeXml {

    lateinit var featureList: LinearLayout
    lateinit var tutorial: Button
    lateinit var docs: Button
    
    
    lateinit var xmlRoot: View

    fun setup(dependency: ViewDependency): View {
        val view = LayoutInflater.from(dependency.context).inflate(R.layout.home, null, false)
        return setup(view)
    }
    fun setup(view: View): View {
        xmlRoot = view
        featureList = view.findViewById<LinearLayout>(R.id.feature_list)
        tutorial = view.findViewById<Button>(R.id.tutorial)
        docs = view.findViewById<Button>(R.id.docs)
        
        
        
        return view
    }
}