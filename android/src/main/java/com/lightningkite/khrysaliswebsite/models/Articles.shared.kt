package com.lightningkite.khrysaliswebsite.models

import com.lightningkite.khrysaliswebsite.vg.article.CodeSnippetVG
import com.lightningkite.khrysaliswebsite.vg.article.LinkToCodeVG
import com.lightningkite.khrysaliswebsite.vg.article.TextVG

object Articles {
    val faq = listOf(
        Article(
            title = "Example Article",
            subtitle = "This is an example of how to write an article.",
            parts = listOf(
                TextVG("Here is some text in the article."),
                CodeSnippetVG("public var test: Int = 0 //yay code!"),
                TextVG("What about a link to some useful code?  Maybe delay.actual.kt?"),
                LinkToCodeVG(SourceHelper.khrysalis("delay.actual", "swiftv3"), "delay.actual")
            )
        )
    )
    val docs = faq
}