Meta:
@Collar
@Post_Collar_Registration_Status_Positive_scenarios
@Collar_Positive
@ReportName Collar_Positive
@Link


Narrative:
In order to test Collar Registration Status story Service
As a tester
I want to make sure all return the code 2xx


Scenario: TC-001_COLLAR_Negative: Verify Collar Registration Status service using devices Id for Empty data
Given Create new user
And Login with valid cridintials
And Create new collar
When Retrieve first id from response
And service method is post
And the service url is: Collar_Registration_Status
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "deviceIds": [
    "Device_Id"
  ]
}
Then the service response should be: 200

Scenario: TC-002_COLLAR_Positive: Verify Collar Registration Status service using one deviceId for user with registered and access as "false"   
Given Create new user
And Login with valid cridintials
And Create new collar
When Retrieve first id from response
And service method is post
And the service url is: Collar_Registration_Status
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "deviceIds": [
    "000000000012"
  ]
}
Then the service response should be: 200

