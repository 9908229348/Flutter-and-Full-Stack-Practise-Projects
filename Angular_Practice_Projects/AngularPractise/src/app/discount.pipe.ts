import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'discount',
  pure: true
})
export class DiscountPipe implements PipeTransform {

  transform(value: number): number {
    const discountPercentage = Math.floor(Math.random() * (50 - 5 + 1) + 5);
    const discount = value - (value * discountPercentage / 100);
    return discount;
  }

}
