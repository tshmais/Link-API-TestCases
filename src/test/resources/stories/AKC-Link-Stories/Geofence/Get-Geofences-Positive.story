Meta:
@GEO
@GET_GEO_Positive_scenarios
@GEO_Positive
@ReportName GEO_Positive
@Link

Narrative:
In order to test GET_GEO service
As a tester
I want to make sure all return the code 200

Scenario: TC-001_GEO_Positive: GET GEO with one point
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
And service method is get
And The service url equals: Get_a_GEO with Same_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 200

Scenario: TC-002_GEO_Positive: GET GEO with multi point
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
        "latitude" : 42.7208661,
        "longitude" : -75.8043122
    }
    ],
    "timeout" : 30 
}
And the service response should be: 201
And service method is get
And The service url equals: Get_a_GEO with Same_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 200
