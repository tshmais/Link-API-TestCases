Meta:
@Collar
@Post_Collar_Registration_Status_Negative_scenarios
@Collar_Negative
@ReportName Collar_Negative
@Link


Narrative:
In order to test Collar Registration Status story Service
As a tester
I want to make sure all return the code 2xx and 4xx



Scenario: TC-001_COLLAR_Negative: Verify Collar Registration Status service using devices Id for Empty data
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is post
And the service url is: Collar_Registration_Status
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "deviceIds": [
    ""
  ]
}
Then the service response should be: 409

Scenario: TC-002_COLLAR_Negative: Verify Collar Registration Status service using devices Id for devices Id not exist 
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is post
And the service url is: Collar_Registration_Status
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "deviceIds": [
    "001100110011"
  ]
}
Then the service response should be: 200

Scenario: TC-004_COLLAR_Negative: Verify Collar Registration Status service using invalid data for Special char  
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is post
And the service url is: Collar_Registration_Status
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "deviceIds": [
    "@#"
  ]
}
Then the service response should be: 409