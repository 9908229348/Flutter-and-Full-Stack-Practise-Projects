import { Component, OnInit } from '@angular/core';

interface IQuotes {
  "id": number,
  "quote": string,
  "author": string
}

@Component({
  selector: 'app-container',
  templateUrl: './container.component.html',
  styleUrls: ['./container.component.scss']
})


export class ContainerComponent implements OnInit {

  constructor() { }

  ngOnInit(): void {
  }

  quotesList: IQuotes[] =
    [
      {
        "id": 1,
        "quote": "Your heart is the size of an ocean. Go find yourself in its hidden depths.",
        "author": "Rumi"
      },
      {
        "id": 2,
        "quote": "The Bay of Bengal is hit frequently by cyclones. The months of November and May, in particular, are dangerous in this regard.",
        "author": "Abdul Kalam"
      },
      {
        "id": 3,
        "quote": "Thinking is the capital, Enterprise is the way, Hard Work is the solution.",
        "author": "Abdul Kalam"
      },
      {
        "id": 4,
        "quote": "If You Can'T Make It Good, At Least Make It Look Good.",
        "author": "Bill Gates"
      },
      {
        "id": 5,
        "quote": "Heart be brave. If you cannot be brave, just go. Love's glory is not a small thing.",
        "author": "Rumi"
      },
      {
        "id": 6,
        "quote": "It is bad for a young man to sin; but it is worse for an old man to sin.",
        "author": "Abu Bakr (R.A)"
      },
      {
        "id": 7,
        "quote": "If You Are Out To Describe The Truth, Leave Elegance To The Tailor.",
        "author": "Albert Einstein"
      },
      {
        "id": 8,
        "quote": "O man you are busy working for the world, and the world is busy trying to turn you out.",
        "author": "Abu Bakr (R.A)"
      },
      {
        "id": 9,
        "quote": "While children are struggling to be unique, the world around them is trying all means to make them look like everybody else.",
        "author": "Abdul Kalam"
      },
      {
        "id": 10,
        "quote": "These Capitalists Generally Act Harmoniously And In Concert, To Fleece The People.",
        "author": "Abraham Lincoln"
      },]

  quotes: any[] = []

}
