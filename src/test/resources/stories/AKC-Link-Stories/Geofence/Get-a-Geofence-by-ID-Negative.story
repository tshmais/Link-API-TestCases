Meta:
@GEO
@GET_GEO_Negative_scenarios
@GEO_Negative
@ReportName Geofence_Negative
@Link

Narrative:
In order to test GET_GEO service
As a tester
I want to make sure all return the code 200

Scenario: TC-001_GEO_Negative: Get GEO When User ID is empty
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
And The service url equal : Get_a_GEO_ID with Empty_User_ID and Same_First_ID and Same_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 404

Scenario: TC-002_GEO_Negative: Get GEO When User ID is Invalid
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
And The service url equal : Get_a_GEO_ID with Invalid_User_ID and Same_First_ID and Same_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 400

Scenario: TC-003_GEO_Negative: Get GEO when User ID is Not Existing
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
And The service url equal : Get_a_GEO_ID with Not_Exist_User_ID and Same_First_ID and Same_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 404


Scenario: TC-004_GEO_Negative: Get GEO when User ID is alrady Existing
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
And The service url equal : Get_a_GEO_ID with Existing_User_ID and Same_First_ID and Same_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 403


Scenario: TC-005_GEO_Negative: Get GEO when collar ID Not_Existing
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
And The service url equal : Get_a_GEO_ID with Same_User_ID and Not_Exist_First_ID and Same_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 404

Scenario: TC-006_GEO_Negative: Get GEO when collar ID is alrady Existing
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
And The service url equal : Get_a_GEO_ID with Same_User_ID and Existing_First_ID and Same_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 403


Scenario: TC-007_GEO_Negative: Get GEO when collar ID is Empty
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
And The service url equal : Get_a_GEO_ID with Same_User_ID and Empty_First_ID and Same_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 404

Scenario: TC-008_GEO_Negative: Get GEO when collar ID is Invalid
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
And The service url equal : Get_a_GEO_ID with Same_User_ID and Invalid_First_ID and Same_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 400


Scenario: TC-009_GEO_Negative: Get GEO when GEO ID Not Existing
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
And The service url equal : Get_a_GEO_ID with Same_User_ID and Same_First_ID and Not_Exist_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 404

Scenario: TC-010_GEO_Negative: Get GEO when GEO ID alrady Existing
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
And The service url equal : Get_a_GEO_ID with Same_User_ID and Same_First_ID and Existing_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 404

Scenario: TC-011_GEO_Negative: Get GEO when GEO ID is Empty
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
And The service url equal : Get_a_GEO_ID with Same_User_ID and Same_First_ID and Empty_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 200

Scenario: TC-012_GEO_Negative: Get GEO when GEO ID is Invalid
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
And The service url equal : Get_a_GEO_ID with Same_User_ID and Same_First_ID and Invalid_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 400