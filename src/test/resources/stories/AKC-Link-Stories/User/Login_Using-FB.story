Meta:
@User
@Login_User_Positive_scenarios
@User_Positive
@ReportName User_Positive
@Link

Scenario: TC-001_USER_Positive: Login via FB using valid data for new LINK user
Given Check if FB user created
And service method is post
And the service url is: Login_service
And add to the header Content-Type with value application/json
When we set Body with {
  "loginProvider": "FB",
  "loginProviderId": "1675940472725867",
  "password": "",
   "loginProviderToken": "generated_access_token"
}
Then the service response should be: 200