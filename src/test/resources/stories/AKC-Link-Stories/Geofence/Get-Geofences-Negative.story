Meta:
@GEO
@GET_GEO_Negative_scenarios
@GEO_Negative
@ReportName GEO_Negative
@Link

Narrative:
In order to test GET_GEO service
As a tester
I want to make sure all return the code 200

Scenario: TC-001_GEO_Negative: GET GEO when User ID is Empty
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
And The service url equals: Get_a_GEO with Empty_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 404

Scenario: TC-002_GEO_Negative: GET GEO when User ID Not Exist
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
And The service url equals: Get_a_GEO with Not_Exist_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 404

Scenario: TC-003_GEO_Negative: GET GEO when User ID already existing
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
And The service url equals: Get_a_GEO with Existing_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 403

Scenario: TC-004_GEO_Negative: GET GEO when Collar ID not existing
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
And The service url equals: Get_a_GEO with Same_User_ID with Not_Exist_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 404

Scenario: TC-005_GEO_Negative: GET GEO when Collar ID is Empty
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
And The service url equals: Get_a_GEO with Same_User_ID with Empty_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 400

Scenario: TC-006_GEO_Negative: GET GEO when Collar ID is already existing
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
And The service url equals: Get_a_GEO with Same_User_ID with Existing_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 403