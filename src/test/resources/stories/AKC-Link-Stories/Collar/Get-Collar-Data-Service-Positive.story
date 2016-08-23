Meta:
@Collar
@Retrieve_Collar_Profile_Positive_scenarios
@Collar_Positive
@ReportName Collar_Positive
@Link


Narrative:
In order to test Retrieve Collar Service
As a tester
I want to make sure all return the code 2xx


Scenario: TC-001_COLLAR_Positive: Get Collar data using valid registered data for collar ID  

Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is get
And The service url equals: Get_Collar_data with Same_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 200
