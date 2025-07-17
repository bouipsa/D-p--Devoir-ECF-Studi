import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { AppComponent } from './app.component';  // Importation du composant autonome

@NgModule({
  imports: [
    BrowserModule,
    AppComponent,  // Importation du composant autonome ici
  ],
  bootstrap: [AppComponent],  // Utilisation du composant autonome comme bootstrap
})
export class AppModule {}
