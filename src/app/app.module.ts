import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { AngularMaterialModule } from './modules/angular-material.module';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { AppComponent } from './app.component';
import { WeatherComponent } from './components/core/weather/weather.component';
import { FavoritesComponent } from './components/core/favorites/favorites.component';
import { HeaderComponent } from './components/core/header/header.component';
import { HttpClientModule } from '@angular/common/http';
import { LocationsComponent } from './components/core/weather/locations/locations.component';
import { WeatherBodyComponent } from './components/core/weather/locations/weather-body/weather-body.component';



@NgModule({
  declarations: [
    AppComponent,
    WeatherComponent,
    FavoritesComponent,
    HeaderComponent,
    WeatherBodyComponent,
    LocationsComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    AngularMaterialModule,
    ReactiveFormsModule,
    FormsModule,
    HttpClientModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
