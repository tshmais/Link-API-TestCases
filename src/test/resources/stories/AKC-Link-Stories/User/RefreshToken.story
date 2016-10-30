Meta:
@User
@RefreshToken_User_Profile_Positive_scenarios
@User_Positive
@ReportName User_Positive
@Link


Narrative:
In order to test RefreshToken Service
As a tester
I want to make sure all return the code 2xx


Scenario: TC-001_USER_Positive: RefreshToken User Profile

Given Create new user
And Login with valid credentials
And service method is Post
When service url equal : RefreshToken
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
 "refreshToken": "Generated_RefreshToken"
}