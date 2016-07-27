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


Scenario: TC-001_COLLAR_Positive: Verify Get Collar data service using valid registered data  for collar ID  
Given Create new user
And Login with valid cridintials
And Create new collar
When Retrieve first id from response
And service method is get
And service url equals : Get_Collar_data with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 200

