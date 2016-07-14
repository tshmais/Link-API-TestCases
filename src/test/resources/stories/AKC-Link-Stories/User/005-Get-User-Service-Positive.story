Meta:
@User
@User_Profile_Positive_scenarios
@User_Positive
@ReportName User_Positive
@Link


Narrative:
In order to test Get User Service
As a tester
I want to make sure all return the code 2xx


Scenario: TC-001_USER_Positive: Verify Get User's Data service using valid data  for new LINK user
Given Create new user
And Login with valid cridintials
And service method is get
When service url equal : Get_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200
|--And json response should equal:Positive_TC-001_Get_User_service

