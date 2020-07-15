//
// ComponentRowQuestionXml.kt
// Created by Khrysalis XML Android
//
package com.lightningkite.khrysaliswebsite.layouts

import android.widget.*
import android.view.*
import com.lightningkite.khrysalis.views.*
import com.lightningkite.khrysaliswebsite.R

class ComponentRowQuestionXml {

    lateinit var container: LinearLayout
    lateinit var question: TextView
    
    
    lateinit var xmlRoot: View

    fun setup(dependency: ViewDependency): View {
        val view = LayoutInflater.from(dependency.context).inflate(R.layout.component_row_question, null, false)
        return setup(view)
    }
    fun setup(view: View): View {
        xmlRoot = view
        container = view.findViewById<LinearLayout>(R.id.container)
        question = view.findViewById<TextView>(R.id.question)
        
        
        
        return view
    }
}