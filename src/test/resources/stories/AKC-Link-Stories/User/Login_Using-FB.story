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
  "loginProviderId": "170100890162315",
  "password": "",
   "loginProviderToken": "EAAVZBLCelUWcBAB0Al6CrAZAnN6tJC0eUSZAczJfSKfV9lZCVPBCm9bEpYSZCv52A8pXhyK4HBp7GKb6PnOx8g4X8zVggVg6SyTi1HKUh0e0SxZCczXP9DEohpxNj25VE6wqJJohl4ZAHz4E5gHsl5Ybk54L5UMEJgnOeLNtljufdTDsun0qqlPQyGC5FFkADZC9Bd0d8fme5ZCMKZBXWiNnED"
}
Then the service response should be: 200