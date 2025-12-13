 # BUENRO Hotel Booking Application

## Application overview : 
  
  ### 1. Application Start : 
  Application requires .env file which will contain the API Key in order to get data from SerpApi.( File will be provided via email).

  After the .env file has been added to the repository a simple ''' flutter run ''' will start the app
  ### 2. Application contents and architecture :

  #### 1.State Management <br /> 
  -> used the BLOC package with handling loading states and error state but also based on different events. 

  #### 2.API Library <br /> 
  -> created an API library based on the HTTP package <br />
  -> created a base file which contains all methods needed for an REST API (post, get , put, delete) <br />
  -> each of the methods can be accessed by any of the endpoints that inherit the base (as being part of the library)<br />
  -> checking for api if status code is between 200 <= 300 for success and failure of api<br />
  -> error state -> crated some examples of exception handling inheriting from the base Exception class <br />
  -> success state -> process of data as a result (utf8decode,json decode etc)<br />
 
  #### 3.Theme   <br /> 
  -> created a basic primary theme for the app (some basic color and basic fonts sizes)

  #### 4.Localisation  <br />
   -> added and generated localisation for both English and Romanina (created separated yaml and l10n folder )

  #### 5.Routing  <br />           
  -> Using the auto route package and it's generator -> generated the routes for the for screens required by the test <br /> 
        ● Overview<br /> 
        ● Hotels<br /> 
        ● Favourites<br /> 
        ● Account

   Landing page -> initial page where the app first lands on initiation that also contains the bottom navigation bar 

  #### 6.Architecture  <br />              
   -> based on BLOC I tried creating each screen on the principle <b>MVVM</b> -> each screen will be representated by a <b>VIEW</b> (view components -><b> UI LAYER</b>) -> which will have the provider that will be updated by the <b>VIEW MODEL</b>  (updating lists and other logisc -> <b>LOGIC LAYER</b>) which brings data from the Api library (<b>DATA LAYER</b>) which is returned to the view model as a <b>DATA MODEL</b>          
                
## Folder structure and other explanations: 

### 1. Folder Structure:

