Meta:
@CCE_request
@ReportName CCE_Request_Positive
@Link


Scenario: TC-001_CCE-Request-Positive: Track Dog Request
Given Create new user
And Login with valid credentials
When Create new collar
And Retrieve first id from response
And Create new app
And Retrieve second id from response
And service method is post
And The service url equals: Cahnge_State_Service with Same_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with 
{

"messageType": "statechange",
"state" : "connected",
"location" :
{ "latitude":38.706863, "longitude":-90.298205, "accuracy": 30 }
}
Then the service response should be: 200
And service method is post
And The service url equals: Create_CCE_Request with Same_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
    "command" : "track",
    "params"  : {              
        "duration" : 1200
    }
}
Then the service response should be: 200

Scenario: TC-002_CCE-Request-Positive: Get a Status Dog Request
Given Create new user
And Login with valid credentials
When Create new collar
And Retrieve first id from response
And Create new app
And Retrieve second id from response
And service method is post
And The service url equals: Cahnge_State_Service with Same_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with 
{

"messageType": "statechange",
"state" : "connected",
"location" :
{ "latitude":38.706863, "longitude":-90.298205, "accuracy": 30 }
}
Then the service response should be: 200
And service method is post
And The service url equals: Create_CCE_Request with Same_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
  "command": "status",
  "params": {
    "type": 2
  }
}
Then the service response should be: 200

Scenario: TC-003_CCE-Request-Positive: Switch on LED Request
Given Create new user
And Login with valid credentials
When Create new collar
And Retrieve first id from response
And Create new app
And Retrieve second id from response
And service method is post
And The service url equals: Cahnge_State_Service with Same_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with 
{

"messageType": "statechange",
"state" : "connected",
"location" :
{ "latitude":38.706863, "longitude":-90.298205, "accuracy": 30 }
}
Then the service response should be: 200
And service method is post
And The service url equals: Create_CCE_Request with Same_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {       
    "command" : "ledOn",
    "params"  : {
        "duration" : 15
    } 
}
Then the service response should be: 200



Scenario: TC-004_CCE-Request-Positive: LED Blink Request
Given Create new user
And Login with valid credentials
When Create new collar
And Retrieve first id from response
And Create new app
And Retrieve second id from response
And service method is post
And The service url equals: Cahnge_State_Service with Same_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with 
{

"messageType": "statechange",
"state" : "connected",
"location" :
{ "latitude":38.706863, "longitude":-90.298205, "accuracy": 30 }
}
Then the service response should be: 200
And service method is post
And The service url equals: Create_CCE_Request with Same_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {       
    "command" : "ledBlink",
    "params"  : {
        "numberOfBlinks" : 10
    } 
}
Then the service response should be: 200


Scenario: TC-005_CCE-Request-Positive: Switch off LED Request
Given Create new user
And Login with valid credentials
When Create new collar
And Retrieve first id from response
And Create new app
And Retrieve second id from response
And service method is post
And The service url equals: Cahnge_State_Service with Same_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with 
{

"messageType": "statechange",
"state" : "connected",
"location" :
{ "latitude":38.706863, "longitude":-90.298205, "accuracy": 30 }
}
Then the service response should be: 200
And service method is post
And The service url equals: Create_CCE_Request with Same_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {       
    "command" : "ledOff"
}
Then the service response should be: 200



Scenario: TC-006_CCE-Request-Positive: Active a geofence request
Given Create new user
And Login with valid credentials
When Create new collar
And Retrieve first id from response
And Create new app
And Retrieve second id from response
And service method is post
And The service url equals: Cahnge_State_Service with Same_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with 
{

"messageType": "statechange",
"state" : "connected",
"location" :
{ "latitude":38.706863, "longitude":-90.298205, "accuracy": 30 }
}
Then the service response should be: 200
And service method is post
And service url equals : Add_GEO with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "points" : [
    {
        "latitude" : 42.7208661,
        "longitude" : -75.8043122
    }
    ],
    "timeout" : 30 
}
Then the service response should be: 201
And service method is post
And The service url equals: Create_CCE_Request with Same_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {       
    "command" : "geofenceActivate",
    "params"  : {      
        "timeout" : 30 
    } 
}
Then the service response should be: 200



Scenario: TC-007_CCE-Request-Positive: Deactive a geofence request
Given Create new user
And Login with valid credentials
When Create new collar
And Retrieve first id from response
And Create new app
And Retrieve second id from response
And service method is post
And The service url equals: Cahnge_State_Service with Same_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with 
{

"messageType": "statechange",
"state" : "connected",
"location" :
{ "latitude":38.706863, "longitude":-90.298205, "accuracy": 30 }
}
Then the service response should be: 200
And service method is post
And service url equals : Add_GEO with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "points" : [
    {
        "latitude" : 42.7208661,
        "longitude" : -75.8043122
    }
    ],
    "timeout" : 30 
}
Then the service response should be: 201
And service method is post
And The service url equals: Create_CCE_Request with Same_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {       
    "command" : "geofenceDeactivate"
}
Then the service response should be: 200
