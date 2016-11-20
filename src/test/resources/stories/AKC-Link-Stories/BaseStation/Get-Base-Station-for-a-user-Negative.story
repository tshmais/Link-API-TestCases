Meta:
@Base
@Retrieve_Base_Profile_Negative_scenarios
@Base_Negative
@ReportName BaseStation_Negative
@Link


Narrative:
In order to test Retrieve Base Service
As a tester
I want to make sure all return the code 2xx

Scenario: TC-001_BASE_Negative: Get BaseStations data for Invalid userId
Given Create new user
And Login with valid credentials
And Create new BaseStation
When Retrieve first id from response
And service method is get
And The service url equals: Get_Base_data with Existing_User_ID with Existing_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 403

Scenario: TC-002_BASE_Negative: Get BaseStations data for Invalid BaseId
Given Create new user
And Login with valid credentials
And Create new BaseStation
When Retrieve first id from response
And service method is get
And The service url equals: Get_Base_data with Same_User_ID with Existing_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 403


Scenario: TC-003_BASE_Negative:  Get BaseStations using unexisting data for User/Basestation

Given Create new user
And Login with valid credentials
And Create new BaseStation
When Retrieve first id from response
And service method is get
And The service url equals: Get_Base_data with Not_Exist_User_ID with Not_Exist_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 404


Scenario: TC-004_BASE_Negative: Get BaseStations for a User who does not have a Base station

Given Create new user
And Login with valid credentials
And Create new BaseStation
When Retrieve first id from response
And service method is get
And The service url equals: Get_Base_data with Same_User_ID with Empty_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 200

Scenario: TC-005_BASE_Positive: Get Base station data for a User who does not have acsess to The Base station
Given Create new user
And Login with valid credentials
And Create new BaseStation
When Retrieve first id from response
And service method is get
And The service url equals: Get_Base_data with Existing_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 403
