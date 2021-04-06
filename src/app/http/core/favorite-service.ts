import { HttpClient } from "@angular/common/http";
import { Injectable } from "@angular/core";
import { Favorite } from "src/app/models/favorite";
import { Location } from "src/app/models/location";
import { environment } from "src/environments/environment";
import { CrudService } from "../crud-service";

@Injectable({
    providedIn: 'root'
})

export class httpFavoriteService extends CrudService<any,number> {


   
    constructor(protected _http:HttpClient){
        super("favorite");
    };

    get(userId:number):any
    {
        this._action="";
        return this.findMany(userId.toString());
    }

    setFavorite(obj:Favorite){
        obj.userId = environment.userId;
        this._action="/SetFavorite";
        return this.update(obj.locationKey,obj);
    }

   
}
