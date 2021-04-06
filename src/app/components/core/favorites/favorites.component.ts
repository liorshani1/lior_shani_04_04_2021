import { Component, OnDestroy, OnInit } from '@angular/core';
import { Subscription } from 'rxjs';
import { WeatherService } from '../weather/weather.service';
import { FavoriteService } from './favorite-service';

@Component({
  selector: 'app-favorites',
  templateUrl: './favorites.component.html',
  styleUrls: ['./favorites.component.css'],
})
export class FavoritesComponent implements OnInit, OnDestroy {
  public sub: Subscription;

  constructor(private svc: FavoriteService) {}

  favorites: any;

  ngOnInit(): void {
    this.svc.getFavorites().subscribe((res) => {
      this.favorites = res.data;
    });

    this.sub = this.svc.onFavoriteChange.subscribe((data) => {
      this.svc.setFavorite(data.key, data.isFavorite).subscribe((res) => {

        let item=this.favorites.filter(x => x.locationKey === data.key)[0];
        if (item){
          item.isFavorite = res.data.isFavorite;
        }
        
      });
    });
  }

  setFavorite(location) {
    this.svc.onFavoriteChange.next({
      key: location.locationKey,
      isFavorite: !location.isFavorite,
    });
    // this.svc.setFavorite(location.locationKey,!location.isFavorite).subscribe(
    //   (res)=>{
    //     this.favorites.isFavorite=res.data.isFavorite;
    //   }
    // )
  }
  ngOnDestroy() {
    this.sub.unsubscribe();
  }
}
