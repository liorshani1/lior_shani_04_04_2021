import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { FavoritesComponent } from './components/core/favorites/favorites.component';
import { WeatherComponent } from './components/core/weather/weather.component';

const routes: Routes = [
  { path: 'weather',redirectTo: '/', pathMatch:'full'},
  { path: '', component:WeatherComponent },
  { path:'favorites', component:FavoritesComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
