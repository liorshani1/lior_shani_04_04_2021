import { Component, OnDestroy, OnInit } from '@angular/core';
import { Subscription } from 'rxjs';
import { WeatherService } from '../../weather.service';

@Component({
  selector: 'app-weather-body',
  templateUrl: './weather-body.component.html',
  styleUrls: ['./weather-body.component.css']
})
export class WeatherBodyComponent implements OnInit,OnDestroy {


  locationName:string;
  data:any;
  isFavorite:boolean;
  
  constructor(private svc:WeatherService) { }
  public sub:Subscription;

  ngOnInit(): void {

    this.sub= this.svc.onLocationSelected.subscribe((obj)=>{
        this.locationName = obj.name;
          this.svc.getLocation(obj.key,obj.name).subscribe((res)=>{
            if(res)
            {
              //debugger;
              this.data=res;
              this.isFavorite = res.favorite.isFavorite;
            }
            
          });
    })
  }
  
  setFavorite(){
  //  debugger;
    this.svc.setFavorite(this.data.locationKey,!this.isFavorite).subscribe(
      (res)=>{
        this.isFavorite = res.data.isFavorite;
      }
    );
  }
  ngOnDestroy(){
    this.sub.unsubscribe();

  }
}
