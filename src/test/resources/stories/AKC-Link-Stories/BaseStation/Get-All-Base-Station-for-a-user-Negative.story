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

Scenario: TC-001_BASE_Negative: Get Base stations data for Empty userId
Given Create new user
And Login with valid credentials
And Create new BaseStation
When Retrieve first id from response
And service method is get
And URL equal: Get_All_Basestation_data with Empty_User_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 400

Scenario: TC-002_BASE_Negative: Get Base stations data for not existing userId
Given Create new user
And Login with valid credentials
And Create new BaseStation
When Retrieve first id from response
And service method is get
And URL equal: Get_All_Basestation_data with Not_Exist_User_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 404

Scenario: TC-003_BASE_Negative: Get Base stations data for existing userId
Given Create new user
And Login with valid credentials
And Create new BaseStation
When Retrieve first id from response
And service method is get
And URL equal: Get_All_Basestation_data with Existing_User_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 403