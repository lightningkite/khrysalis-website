//
// FaqXml.ts
// Created by Khrysalis XML Typescript
//
import { loadHtmlFromString, findViewById, getViewById, replaceViewWithId } from 'khrysalis/dist/views/html'
import { customViewSetDelegate } from 'khrysalis/dist/views/CustomView.actual'
import htmlForDefault from './faq.html'
//! Declares com.lightningkite.khrysaliswebsite.layouts.FaqXml
export class FaqXml {
    xmlRoot!: HTMLElement;
    filter!: HTMLInputElement;
    questions!: HTMLDivElement;
    loadHtmlString(): string {
        return htmlForDefault;
    }
    setup(dependency: Window): HTMLElement {
        const view = loadHtmlFromString(this.loadHtmlString());
        this.xmlRoot = view
        this.filter = getViewById<HTMLInputElement>(view, "filter");
        this.questions = getViewById<HTMLDivElement>(view, "questions");
        return view
    }
}
