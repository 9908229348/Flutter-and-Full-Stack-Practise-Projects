import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'cap'
})
export class CapPipe implements PipeTransform {

  transform(value: boolean): string {
    return value ? "YES" : "NO";
  }
}
