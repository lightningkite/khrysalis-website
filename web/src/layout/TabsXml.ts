//
// TabsXml.ts
// Created by Khrysalis XML Typescript
//
import { loadHtmlFromString, findViewById, getViewById, replaceViewWithId } from 'khrysalis/dist/views/html'
import { customViewSetDelegate } from 'khrysalis/dist/views/CustomView.actual'
import htmlForDefault from './tabs.html'
//! Declares com.lightningkite.khrysaliswebsite.layouts.TabsXml
export class TabsXml {
    xmlRoot!: HTMLElement;
    back!: HTMLButtonElement;
    title!: HTMLElement;
    rootStackHolder!: HTMLDivElement;
    home!: HTMLInputElement;
    setupKhrysalis!: HTMLInputElement;
    faq!: HTMLInputElement;
    docs!: HTMLInputElement;
    loadHtmlString(): string {
        return htmlForDefault;
    }
    setup(dependency: Window): HTMLElement {
        const view = loadHtmlFromString(this.loadHtmlString());
        this.xmlRoot = view
        this.back = getViewById<HTMLButtonElement>(view, "back");
        this.title = getViewById<HTMLElement>(view, "title");
        this.rootStackHolder = getViewById<HTMLDivElement>(view, "rootStackHolder");
        this.home = getViewById<HTMLInputElement>(view, "home");
        this.setupKhrysalis = getViewById<HTMLInputElement>(view, "setup_khrysalis");
        this.faq = getViewById<HTMLInputElement>(view, "faq");
        this.docs = getViewById<HTMLInputElement>(view, "docs");
        return view
    }
}
