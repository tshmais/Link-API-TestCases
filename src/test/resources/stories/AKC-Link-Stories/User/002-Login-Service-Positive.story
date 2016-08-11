Meta:
@User
@Login_User_Positive_scenarios
@User_Positive
@ReportName User_Positive
@Link

Scenario: TC-001_USER_Positive: Verify Login service using valid data  for new LINK user
Given Create new user
And Login with valid cridintials
And service method is get
Then the service response should be: 200
|--And json response should equal:Positive_TC-001_Login_service
