//
// ArticleXml.ts
// Created by Khrysalis XML Typescript
//
import { loadHtmlFromString, findViewById, getViewById, replaceViewWithId } from 'khrysalis/dist/views/html'
import { customViewSetDelegate } from 'khrysalis/dist/views/CustomView.actual'
import htmlForDefault from './article.html'
//! Declares com.lightningkite.khrysaliswebsite.layouts.ArticleXml
export class ArticleXml {
    xmlRoot!: HTMLElement;
    question!: HTMLElement;
    content!: HTMLDivElement;
    loadHtmlString(): string {
        return htmlForDefault;
    }
    setup(dependency: Window): HTMLElement {
        const view = loadHtmlFromString(this.loadHtmlString());
        this.xmlRoot = view
        this.question = getViewById<HTMLElement>(view, "question");
        this.content = getViewById<HTMLDivElement>(view, "content");
        return view
    }
}
