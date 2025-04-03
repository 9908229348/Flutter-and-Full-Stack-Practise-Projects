import { ComponentFixture, TestBed } from '@angular/core/testing';

import { Templateref2Component } from './templateref2.component';

describe('Templateref2Component', () => {
  let component: Templateref2Component;
  let fixture: ComponentFixture<Templateref2Component>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ Templateref2Component ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(Templateref2Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
