import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',  // Assurez-vous que cela pointe bien vers app.component.html
  styleUrls: ['./app.component.css']    // Ce fichier peut être vide si vous ne voulez pas de styles spécifiques
})
export class AppComponent {
  title = 'frontend';
}
