Meta:
@ReportName Add_Collar_Positive_scenarios
@Collar_Positive
@ReportName Collar_Positive
@Collar
@Link



Narrative:
In order to test New_Collar service
As a tester
I want to make sure all return the code 201
                                  
Scenario: TC-001_COLLAR_Positive: Verify Add Collar service using valid data  for New Collar
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Add_New_Collar_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "deviceId" : "Generated-deviceId",
    "hardwareVersion" : "DS5s60",
    "firmwareVersion" : "1.1"
}
Then the service response should be: 201
And Retrieve first id from response
And I want to open a connection to MySQL DB
And I want to pull the data from the DB using Add-New-Collar-Service-Positive query and response ID
And json path id should be : 0
And json path version should be : 1
And json path hardwareVersion should be : 2
And json path firmwareVersion should be : 3
And json path primaryUserId should be : 4
And json path deviceId should be : 5

Scenario: TC-002_COLLAR_Positive: Verify Add Collar service using valid data for FB Collar

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
And the service response should be: 200
And Retrieve json path access_token response
And Retrieve user id userId response
And service method is post
When service url equal : Add_New_Collar_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "deviceId" : "Generated-deviceId",
    "hardwareVersion" : "DS5s60",
    "firmwareVersion" : "1.1"
}
Then the service response should be: 201
And Retrieve first id from response
And I want to open a connection to MySQL DB
And I want to pull the data from the DB using Add-New-Collar-Service-Positive query and response ID
And json path id should be : 0
And json path version should be : 1
And json path hardwareVersion should be : 2
And json path firmwareVersion should be : 3
And json path primaryUserId should be : 4
And json path deviceId should be : 5