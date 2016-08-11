Meta:
@skip



Narrative:
In order to test Get_Collar_Data service
As a tester
I want to make sure all return the code 4xx for GET scenarios


Scenario: TC-001_COLLAR_Negative: Verify Get Collar data service using Invalid userId
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is get

And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 200


Scenario: TC-002_COLLAR_Negative: Verify Get Collar data service using Invalid collarId
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is get
And service url equals : Get_Collar_data with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 200



Scenario: TC-003_COLLAR_Negative: Verify Get Collar data service using unexisting data for user/collar IDs
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is get
And service url equals : Get_Collar_data with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 200



Scenario: TC-004_COLLAR_Negative: Verify Get Collar data service using userId without a collar
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is get
And service url equals : Get_Collar_data with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 200

