import { HttpClient, HttpParams } from "@angular/common/http";
import { Injectable } from "@angular/core";
import { Favorite } from "src/app/models/Favorite";
import { Location } from "src/app/models/location";
import { environment } from "src/environments/environment";
import { CrudService } from "../crud-service";

@Injectable({
    providedIn: 'root'
})

export class httpLocationService extends CrudService<any,number> {


   
    constructor(protected _http:HttpClient){
        super("location");
    };

    search(inputText:string)
    {
        this._action="/search";
        return this.findMany(inputText);
    }

    get(key:number,name:string):any
    {
        this._action="";
        let params = new HttpParams();
            params = params.append('name',name);
        return this.findOneWithParams(key,params);
    }

   

   
}
