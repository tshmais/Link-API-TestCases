Meta:
@User
@User_Profile_Negative_scenarios
@User_Negative
@ReportName User_Negative
@Link

Narrative:
In order to test Get User Service
As a tester
I want to make sure all return the code 4xx


Scenario:TC-002_USER_Negative: Verify Get User's Data service using  invalid data  for  user ID not exist "0"
Given Create new user
And Login with valid cridintials
And service method is get
When the service url equal: Get_User_service with 0
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 404
And json response should equal:Negative_TC-002_Get_User_service

Scenario: TC-003_USER_Negative: Verify Get User's Data service using  invalid data  for  user ID not exist "109876"
Given Create new user
And Login with valid cridintials
And service method is get
When the service url equal: Get_User_service with 109876
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 404
And json response should equal:Negative_TC-003_Get_User_service


Scenario: TC-004_USER_Negative: Verify Get User's Data service using  invalid data  for  user ID  "*"
Given Create new user
And Login with valid cridintials
And service method is get
When the service url equal:  Get_User_service with *
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 400
