Meta:
@GEO
@Update_GEO_Positive_scenarios
@Update_GEO_Positive
@ReportName Update_GEO_Positive
@Link

Narrative:
In order to test GET_GEO service
As a tester
I want to make sure all return the code 200

Scenario: TC-001_GEO_Positive: Update GEO add more points up to 5 
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
    "timeout" : 30 
}
And the service response should be: 201
And Retrieve second id from response
And service method is put
And The service url equal : Update_GEO with Same_User_ID and Same_First_ID and Same_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "id" : "Second_id",
    "version":0,
    "points" : [{
            "latitude" : 80.7208661,
            "longitude" : -75.8043122
        },
        {
            "latitude" : 45.7200681,
            "longitude" : -75.8043038
        }],
    "timeout" : 5
}
And the service response should be: 200

Scenario: TC-002_GEO_Positive: Update Timeout for the GEO 
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
    "timeout" : 5 
}
And the service response should be: 201
And Retrieve second id from response
And service method is put
And The service url equal : Update_GEO with Same_User_ID and Same_First_ID and Same_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "id" : "Second_id",
    "version":0,
    "points" : [{
            "latitude" : 80.7208661,
            "longitude" : -75.8043122
        },
        {
            "latitude" : 45.7200681,
            "longitude" : -75.8043038
        }],
    "timeout" : ""
}
And the service response should be: 200

Scenario: TC-003_GEO_Positive: Update GEO to one point
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
    },
     {
        "latitude" : 42.7208661,
        "longitude" : -75.8043122
    }
    ],
    "timeout" : 5 
}
And the service response should be: 201
And Retrieve second id from response
And service method is put
And The service url equal : Update_GEO with Same_User_ID and Same_First_ID and Same_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "id" : "Second_id",
    "version":0,
    "points" : [{
            "latitude" : 80.7208661,
            "longitude" : -75.8043122
        }],
    "timeout" : ""
}
And the service response should be: 200


Scenario: TC-004_GEO_Positive: Update GEO with latitude & longitude limts
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
    "timeout" : 30 
}
And the service response should be: 201
And Retrieve second id from response
And service method is put
And The service url equal : Update_GEO with Same_User_ID and Same_First_ID and Same_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "id" : "Second_id",
    "version":0,
    "points" : [
    {
            "latitude" : 90.0,
            "longitude" : 180.0
        },
         {
            "latitude" : -90.0,
            "longitude" : -180.0
        }
        ],
    "timeout" : ""
}
And the service response should be: 200

Scenario: TC-005_GEO_Positive: Update GEO when timeout ste to 0
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
    "timeout" : 30 
}
And the service response should be: 201
And Retrieve second id from response
And service method is put
And The service url equal : Update_GEO with Same_User_ID and Same_First_ID and Same_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "id" : "Second_id",
    "version":0,
    "points" : [
    {
            "latitude" : 50,
            "longitude" : 60
        }
        ],
    "timeout" : "0"
}
And the service response should be: 200

Scenario: TC-006_GEO_Positive: Update GEO when latitude&longitude ste to 0
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
    "timeout" : 30 
}
And the service response should be: 201
And Retrieve second id from response
And service method is put
And The service url equal : Update_GEO with Same_User_ID and Same_First_ID and Same_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with 
{
    "id" : "Second_id",
    "version":0,
    "points" : [
    {
            "latitude" : 0,
            "longitude" : 0
        }
        ],
    "timeout" : "0"
}
And the service response should be: 200

