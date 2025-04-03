import { Component, OnInit } from '@angular/core';

type TList = {
  userId: number,
  id: number,
  completed: boolean,
  todo: string,
  date: Date,
  price: number
}

@Component({
  selector: 'app-pipes',
  templateUrl: './pipes.component.html',
  styleUrls: ['./pipes.component.scss']
})
export class PipesComponent implements OnInit {

  list: TList[] =
    [
      {
        "id": 1,
        "todo": "Do something nice for someone you care about",
        "completed": false,
        "userId": 152,
        "date": new Date(),
        price: 2300,


      },
      {
        "id": 2,
        "todo": "Memorize a poem",
        "completed": true,
        "userId": 13,
        "date": new Date(),
        price: 2300


      },
      {
        "id": 3,
        "todo": "Watch a classic movie",
        "completed": true,
        "userId": 68,
        "date": new Date(),
        price: 2300


      },
      {
        "id": 4,
        "todo": "Watch a documentary",
        "completed": false,
        "userId": 84,
        "date": new Date(),
        price: 2300


      },
      {
        "id": 5,
        "todo": "Invest in cryptocurrency",
        "completed": false,
        "userId": 163,
        "date": new Date(),
        price: 2300


      },
      {
        "id": 6,
        "todo": "Contribute code or a monetary donation to an open-source software project",
        "completed": false,
        "userId": 69,
        "date": new Date(),
        price: 2300


      },
      {
        "id": 7,
        "todo": "Solve a Rubik's cube",
        "completed": true,
        "userId": 76,
        "date": new Date(),
        price: 2300


      },
      {
        "id": 8,
        "todo": "Bake pastries for yourself and neighbor",
        "completed": true,
        "userId": 198,
        "date": new Date(),
        price: 2300


      },
      {
        "id": 9,
        "todo": "Go see a Broadway production",
        "completed": false,
        "userId": 7,
        "date": new Date(),
        price: 2300


      },
      {
        "id": 10,
        "todo": "Write a thank you letter to an influential person in your life",
        "completed": true,
        "userId": 9,
        "date": new Date(),
        price: 2300
      }]
  constructor() { }

  ngOnInit(): void {
  }

}
