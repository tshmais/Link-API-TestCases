Meta:
@GEO
@Create_GEO_Negative_scenarios
@Create_GEO_Negative
@ReportName Geofence_Negative
@Link
Narrative:
In order to test Create_GEO service
As a tester
I want to make sure all return the code 409

Scenario: TC-001_GEO_Negative: Create GEO When Points is missing
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is post
And service url equals : Add_GEO with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "points" : [
    {}
    
    ],
    "timeout" : 30 
}
Then the service response should be: 409

Scenario: TC-002_GEO_Negative: Create GEO When Points is null
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is post
And service url equals : Add_GEO with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "points" : [
    
    ],
    "timeout" : 30 
}
Then the service response should be: 409

Scenario: TC-003_GEO_Negative: Create GEO with Negative time 
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
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
    "timeout" : -30
}
Then the service response should be: 409

Scenario: TC-004_GEO_Negative: Create GEO When Latitude is greater than 90 or less than -90
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is post
And service url equals : Add_GEO with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "points" : [
    {
        "latitude" : -200.7208661,
        "longitude" : -75.8043122
    },
     {
        "latitude" : 200.7208661,
        "longitude" : -75.8043122
    }
    ],
    "timeout" : 30
}
Then the service response should be: 409

Scenario: TC-005_GEO_Negative: Create GEO When Longitude is greater than 180 or less than -180
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is post
And service url equals : Add_GEO with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "points" : [
    {
        "latitude" : 45.7208661,
        "longitude" : -200.8043122
    },
     {
        "latitude" : 45.7208661,
        "longitude" : 200.8043122
    }
    ],
    "timeout" : 30
}
Then the service response should be: 409

Scenario: TC-006_GEO_Negative: Create GEO When Latitude is missing or null
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is post
And service url equals : Add_GEO with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "points" : [
    {
        "latitude" : "",
        "longitude" : -200.8043122
    },
     {
      "longitude" : -200.8043122
    }
     
    ],
    "timeout" : 30
}
Then the service response should be: 409


Scenario: TC-007_GEO_Negative: Create GEO When Latitude is missing or null
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is post
And service url equals : Add_GEO with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "points" : [
    {
        "latitude" : "",
        "longitude" : -200.8043122
    },
     {
       "longitude" : -200.8043122
    }
     
    ],
    "timeout" : 30
}
Then the service response should be: 409

Scenario: TC-008_GEO_Negative: Create GEO When more than 5 points are passed
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is post
And service url equals : Add_GEO with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "points" : [
    {
        "latitude" : 45.7208661,
        "longitude" : -200.8043122
    },{
        "latitude" : 45.7208661,
        "longitude" : -200.8043122
    },{
        "latitude" : 45.7208661,
        "longitude" : -200.8043122
    },{
        "latitude" : 45.7208661,
        "longitude" : -200.8043122
    },{
        "latitude" : 45.7208661,
        "longitude" : -200.8043122
    },
     {
        "latitude" : 45.7208661,
        "longitude" : 200.8043122
    }
    ],
    "timeout" : 30
}
Then the service response should be: 409

Scenario: TC-009_GEO_Negative: Create GEO with Empty user ID
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is post
And The service url equals: Add_GEO_N with Empty_User_ID with Existing_ID
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
Then the service response should be: 405

Scenario: TC-010_GEO_Negative: Create GEO with Empty Collar ID
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is post
And The service url equals: Add_GEO_N with Same_User_ID with Empty_ID
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
Then the service response should be: 405



Scenario: TC-011_GEO_Negative: Create GEO with Empty user ID
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is post
And The service url equals: Add_GEO_N with Not_Exist_User_ID with Same_ID
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
Then the service response should be: 404

Scenario: TC-012_GEO_Negative: Create GEO with Existing Collar ID
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is post
And The service url equals: Add_GEO_N with Same_User_ID with Existing_ID
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
Then the service response should be: 403

Scenario: TC-013_GEO_Negative: Create GEO with Not Exist Collar ID
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is post
And The service url equals: Add_GEO_N with Same_User_ID with Not_Exist_ID
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
Then the service response should be: 404


Scenario: TC-014_GEO_Negative: Create GEO with Existing Collar ID
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is post
And The service url equals: Add_GEO_N with Existing_User_ID with Same_ID
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
Then the service response should be: 403