Meta:
@BaseStation
@Post_BaseStation_Registration_Status_Negative_scenarios
@BaseStation_Negative
@ReportName BaseStation_Negative
@Link

Narrative:
In order to test BaseStation Registration Status story Service
As a tester
I want to make sure all return the code 2xx and 4xx



Scenario: TC-001_COLLAR_Negative:  BaseStation Registration Status using Empty data for device Ids
Given Create new user
And Login with valid credentials
And service method is post
And the service url is: Bases_Registration_Status
And add to the header Content-Type with value application/json
When add Session Authorization to Request headers
And we set Body with {
  "baseMacAddresses": [
    ""
  ]
}
Then the service response should be: 409

Scenario: TC-002_COLLAR_Negative: Check BaseStation Registration Status using not existing data for devices Ids
Given Create new user
And Login with valid credentials
And service method is post
And the service url is: Bases_Registration_Status
And add to the header Content-Type with value application/json
When add Session Authorization to Request headers
And add Session link-app-id to Request header
And we set Body with {
  "baseMacAddresses": [
    "001100110011"
  ]
}
Then the service response should be: 200

Scenario: TC-003_COLLAR_Negative: Check BaseStation Registration Status using Special char for devices Ids
Given Create new user
And Login with valid credentials
And service method is post
And the service url is: Bases_Registration_Status
And add to the header Content-Type with value application/json
When add Session Authorization to Request headers
And add Session link-app-id to Request header
And we set Body with {
  "baseMacAddresses": [
    "@#"
  ]
}
Then the service response should be: 409