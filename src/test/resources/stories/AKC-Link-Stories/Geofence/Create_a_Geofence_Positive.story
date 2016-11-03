Meta:
@GEO
@Create_GEO_Positive_scenarios
@Create_GEO_Positive
@ReportName Create_GEO_Positive
@Link


Narrative:
In order to test Create_GEO service
As a tester
I want to make sure all return the code 201
                                  
Scenario: TC-001__GEO_Positive: Create GEO with 5 points
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
    },
     {
        "latitude" : 42.7208661,
        "longitude" : -75.8043122
    },
     {
        "latitude" : 42.7208661,
        "longitude" : -75.8043122
    },
    
    {
        "latitude" : 42.7200681,
        "longitude" : -75.8043038
    }
    ],
    "timeout" : 30 
}
Then the service response should be: 201

Scenario: TC-002__GEO_Positive: Create GEO with one point
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
Then the service response should be: 201

Scenario: TC-003_GEO_Negative: Create GEO without timeOut
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
    "timeout" : ""
}
Then the service response should be: 201