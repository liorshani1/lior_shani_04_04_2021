import { Injectable } from '@angular/core';
import { Subject } from 'rxjs';
import { httpFavoriteService } from 'src/app/http/core/favorite-service';
import { httpLocationService } from 'src/app/http/core/location-service';
import { Favorite } from 'src/app/models/favorite';

@Injectable({
  providedIn: 'root'
})
export class FavoriteService {

  onFavoriteChange = new Subject<{key:number , isFavorite:boolean}>();

  constructor(private svc:httpFavoriteService) {

  }

  getFavorites(){
    const fakeUserId=1;
    return this.svc.get(fakeUserId);
  }

  setFavorite(locationKey:number, isFavorite:boolean){
    const fakeUserId=1;
    return this.svc.setFavorite(new Favorite(fakeUserId,locationKey,isFavorite));
  }
}
