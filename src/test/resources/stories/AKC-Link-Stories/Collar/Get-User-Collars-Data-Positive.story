Meta:
@Collar
@Retrieve_Collars_Profile_Positive_scenarios
@Collar_Positive
@ReportName Collar_Positive
@Link


Narrative:
In order to test Retrieve Collars Service
As a tester
I want to make sure all return the code 2xx


Scenario: TC-001_COLLAR_Positive: Verify Get user collars service using valid data  for New user 
Given Create new user
And Login with valid credentials
And Create new collar
When service method is get
And service url equal : Get_Collars_data
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 200

Scenario: TC-004_COLLAR_Positive: Verify Get user collars service using valid data  for user with multi Collars 
Given Create new user
And Login with valid credentials
And Create new collar
And Create new collar
And Create new collar
And Create new collar
When service method is get
And service url equal : Get_Collars_data
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 200


Scenario: TC-005_COLLAR_Positive: Verify Get user collars service using valid data for user with one Collar 
Given Create new user
And Login with valid credentials
And Create new collar
When service method is get
And service url equal : Get_Collars_data
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 200

Scenario: TC-007_COLLAR_Positive: Verify Get user collars service using valid data  for user without Collar

Given Create new user
And Login with valid credentials
When service method is get
And service url equal : Get_Collars_data
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 200