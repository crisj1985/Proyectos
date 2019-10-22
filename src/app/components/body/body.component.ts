import { Component } from '@angular/core';

@Component({
  selector: 'app-body',
  templateUrl: `body.component.html`
})
export class BodyComponent {
  mostrar:boolean = false;
  frase:any = {
    mensaje:"Un gran poder..",
    autor:"Ben Parker"
  }

  personajes:string[]=["Spiderman","Venom","Dr. Octupus"];
}
