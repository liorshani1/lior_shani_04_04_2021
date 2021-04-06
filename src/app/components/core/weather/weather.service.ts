import { HttpErrorResponse } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { BehaviorSubject, Observable, Subject, throwError } from 'rxjs';
import { catchError, map, tap } from 'rxjs/operators';
import { httpFavoriteService } from 'src/app/http/core/favorite-service';
import { httpLocationService } from 'src/app/http/core/location-service';
import { Favorite } from 'src/app/models/favorite';
import { FavoriteService } from '../favorites/favorite-service';
import { FavoritesComponent } from '../favorites/favorites.component';


@Injectable({
  providedIn: 'root'
})

export class WeatherService {

  onLocationSelected =new Subject<{ name:string, key:string}>();
  onFavoriteSelected =new Subject<boolean>();

  constructor(private svcLocation:httpLocationService, private svcFavorite:FavoriteService) { }

  getLocations(textInput):any {
    return this.svcLocation.search(textInput);
  }

  getLocation(val,name){
      return this.svcLocation.get(val as number,name).pipe(
        map((res: any) => {
          if (!res.success) {
            throw new Error('Value expected!');
          }
          return {...res.data,favorite:res.data.favorite? res.data.favorite: {  "isFavorite": false} };
        })
      );
  }
  setFavorite(LocationKey:number, isFavorite:boolean){
    
    return this.svcFavorite.setFavorite(LocationKey,isFavorite);
  }

  


}
