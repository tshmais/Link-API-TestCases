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

Scenario: TC-001__GEO_Positive: Get GEO by ID
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
And service method is get
And The service url equal : Get_a_GEO_ID with Same_User_ID and Same_First_ID and Same_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 200
