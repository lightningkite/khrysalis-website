//
// DocsXml.ts
// Created by Khrysalis XML Typescript
//
import { loadHtmlFromString, findViewById, getViewById, replaceViewWithId } from 'khrysalis/dist/views/html'
import { customViewSetDelegate } from 'khrysalis/dist/views/CustomView.actual'
import htmlForDefault from './docs.html'
//! Declares com.lightningkite.khrysaliswebsite.layouts.DocsXml
export class DocsXml {
    xmlRoot!: HTMLElement;
    filter!: HTMLInputElement;
    articles!: HTMLDivElement;
    loadHtmlString(): string {
        return htmlForDefault;
    }
    setup(dependency: Window): HTMLElement {
        const view = loadHtmlFromString(this.loadHtmlString());
        this.xmlRoot = view
        this.filter = getViewById<HTMLInputElement>(view, "filter");
        this.articles = getViewById<HTMLDivElement>(view, "articles");
        return view
    }
}
