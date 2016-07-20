Meta:
@Collar
@Collar_Registration_Status_Negative_scenarios
@Collar_Negative
@ReportName Collar_Negative
@Link

Narrative:
In order to test Update User Service
As a tester
I want to make sure all return the code 2xx

Scenario:TC-001_COLLAR_Negative: Verify Collar Registration Status service using devices Id for Empty data

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Collar_Registration_Status_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "deviceIds": [
    ""
  ]
}
Then the service response should be: 200

Scenario:TC-002_COLLAR_Negative: Verify Collar Registration Status service using devices Id for devices Id not exist 

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Collar_Registration_Status_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "deviceIds": [
    "000000000012"
  ]
}
Then the service response should be: 409

Scenario:TC-002_COLLAR_Negative: Verify Collar Registration Status service using devices Id for devices Id not exist 

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Collar_Registration_Status_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "deviceIds": [
    "@#0000000012"
  ]
}
Then the service response should be: 200



Scenario: TC-004_COLLAR_Negative: Verify Collar Registration Status service using invalid data for Special char
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Collar_Registration_Status_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "deviceIds": [
    "@#0000000012"
  ]
}
Then the service response should be: 200