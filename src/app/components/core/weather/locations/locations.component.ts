import { Component, HostListener, OnInit } from '@angular/core';
import { FormControl, FormGroup } from '@angular/forms';
import { debounceTime, map, takeUntil } from 'rxjs/operators';
import { WeatherService } from 'src/app/components/core/weather/weather.service';

@Component({
  selector: 'app-locations',
  templateUrl: './locations.component.html',
  styleUrls: ['./locations.component.css'],
})
export class LocationsComponent implements OnInit {
  cityKey: null;
  cityName: null;
  wasValSelected = false;
  locationData: null;

  constructor(private svc: WeatherService) {}

  @HostListener('scroll', ['$event'])
  onScroll(event: any) {
    if (
      event.target.offsetHeight + event.target.scrollTop >=
      event.target.scrollHeight
    ) {
      console.log('load more data');
      // event.target.scrollTop = 100;
    }
  }

  filteredOptions: string[];
  locationForm: FormGroup = new FormGroup({
    name: new FormControl(''),
  });

  ngOnInit() {
    this.inputLocationObserver();
  }

  inputLocationObserver() {
    this.locationForm.valueChanges
      .pipe(debounceTime(300))
      .subscribe((value) => {
        const filterValue = this.locationForm.get('name').value;
        let arr = [];
        if (filterValue?.length > 0 && !this.wasValSelected) {
          this.svc.getLocations(filterValue).subscribe((arr) => {
            this.filteredOptions = arr.data;
          });
        }
      });
  }

  onLocationSelected(option) {
    this.cityKey = option['key'];
    this.cityName = option['name'];
    this.wasValSelected = true;
    this.svc.onLocationSelected.next({
      name: this.cityName,
      key: this.cityKey,
    });
  }
}
