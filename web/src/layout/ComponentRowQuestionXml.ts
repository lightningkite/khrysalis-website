//
// ComponentRowQuestionXml.ts
// Created by Khrysalis XML Typescript
//
import { loadHtmlFromString, findViewById, getViewById, replaceViewWithId } from 'khrysalis/dist/views/html'
import { customViewSetDelegate } from 'khrysalis/dist/views/CustomView.actual'
import htmlForDefault from './component_row_question.html'
//! Declares com.lightningkite.khrysaliswebsite.layouts.ComponentRowQuestionXml
export class ComponentRowQuestionXml {
    xmlRoot!: HTMLElement;
    container!: HTMLDivElement;
    question!: HTMLElement;
    loadHtmlString(): string {
        return htmlForDefault;
    }
    setup(dependency: Window): HTMLElement {
        const view = loadHtmlFromString(this.loadHtmlString());
        this.xmlRoot = view
        this.container = getViewById<HTMLDivElement>(view, "container");
        this.question = getViewById<HTMLElement>(view, "question");
        return view
    }
}
