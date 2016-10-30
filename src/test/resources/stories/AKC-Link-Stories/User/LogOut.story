Meta:
@User
@LogOut_Positive_scenarios
@User_Positive
@ReportName User_Positive
@Link

Narrative:
In order to test User LogOut service
As a tester
I want to make sure all return the code 200
                                  
Scenario: TC-001_USER_Positive: UserLogOut
Given Create new user
And Login with valid credentials
And service method is post
And the service url is: LogOut