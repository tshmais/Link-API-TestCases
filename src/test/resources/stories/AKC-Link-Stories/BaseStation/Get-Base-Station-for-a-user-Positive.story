Meta:
@Base
@Retrieve_Base_Profile_Positive_scenarios
@Base_Positive
@ReportName BaseStation_Positive
@Link




Narrative:In order to test Retrieve Base Service As a tester I want to make sure all return the code 2xx



Scenario: TC-001_BASE_Positive: Get Base station data for new user


Given Create new user
And Login with valid credentials
And Create new BaseStation
When Retrieve first id from response
And service method is get
And The service url equals: Get_Base_data with Same_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 200



Scenario: TC-002_BASE_Positive: Get Base station data for old user
Given Create new user
And Login with valid credentials
And Create new BaseStation
When Retrieve first id from response
And service method is get
And The service url equals: Get_Base_data with Same_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 200

Scenario: TC-004_BASE_Positive: Get Base station data for User has a single Base staion
Given Create new user
And Login with valid credentials
And Create new BaseStation
When Retrieve first id from response
And service method is get
And The service url equals: Get_Base_data with Same_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 200

Scenario: TC-005_BASE_Positive: Get BaseStation data for a user with multi BaseStations 
Given Create new user
And Login with valid credentials
And Create new BaseStation
And Create new BaseStation
And Create new BaseStation
And Create new BaseStation
When Retrieve first id from response
And service method is get
And The service url equals: Get_Base_data with Same_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 200



