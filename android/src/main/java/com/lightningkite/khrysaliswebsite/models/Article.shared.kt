package com.lightningkite.khrysaliswebsite.models

import com.lightningkite.khrysalis.views.ViewGenerator

data class Article(
    val title: String,
    val subtitle: String,
    val parts: List<ViewGenerator>
) {
    companion object {
        val empty = Article("", "", listOf())
    }
    fun contains(part: String): Boolean = title.contains(part, true) || subtitle.contains(part, true)
}