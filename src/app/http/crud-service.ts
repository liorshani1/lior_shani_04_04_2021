import { Observable } from 'rxjs';
import { HttpClient, HttpParams } from '@angular/common/http';
import { CrudOperations } from './crud-operations.service';
import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root'
})

export abstract class CrudService<T, ID> implements CrudOperations<T, ID> {

    protected _action: string="";
    protected _http: HttpClient;
    protected _base:string
    
    
    constructor(
      protected _controller: string,
    ) {
      this._base = environment.api.baseUrl + this._controller;
    }

  save(t: T): Observable<T> {
    return this._http.post<T>(this._base + this._action, t);
  }

  update(id: ID, t: T): Observable<T> {
    return this._http.put<T>(this._base + this._action + "/" + id, t, {});
  }

  findOne(id: ID): Observable<T> {
    return this._http.get<T>(this._base + this._action + "/" + id);
  }

   findOneWithParams(id: ID, params:HttpParams): Observable<T> {

    return this._http.get<T>(this._base + this._action + "/" + id, {params: params});
   }

  findMany(id: string): Observable<T[]> {
    return this._http.get<T[]>(this._base + this._action + "/" + id);
  }

  findAll(): Observable<T[]> {
    return this._http.get<T[]>(this._base + this._action)
  }

  delete(id: ID): Observable<T> {
    return this._http.delete<T>(this._base + this._action + '/' + id);
	}

}
