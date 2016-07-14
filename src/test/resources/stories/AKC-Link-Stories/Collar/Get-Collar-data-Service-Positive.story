Meta:
@skip
@Collar
@Link


Narrative:
In order to test Get_Collar_Data service
As a tester
I want to make sure all return the code 200 for GET scenarios

Scenario: TC-001_COLLAR_Positive: Verify Get Collar data service using valid registered data  for collar ID

Given Create new user
And Login with valid cridintials
And service method is get
When the service url equal: Get_Collar_Data_service with 3 and 10
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200
|--And json response should equal:Positive_TC-001_Get_User's_Dogs_service