import { Directive, HostBinding, HostListener } from '@angular/core';

@Directive({
  selector: '[appHighlight]'
})
export class HighlightDirective {

  constructor() { }

  @HostBinding('class.hightlightEle') hightlightEle: boolean = false;

  @HostBinding('style.backgroundColor') backgroundColor: string = 'red'

  @HostListener('mouseenter') onMouseEnter() {
    this.backgroundColor = 'lightblue'
    this.hightlightEle = true;
  }

  @HostListener('mouseleave') onMouseLeave() {
    this.backgroundColor = 'orange'
  }

}
