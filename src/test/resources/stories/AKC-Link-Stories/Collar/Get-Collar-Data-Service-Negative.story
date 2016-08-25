Meta:
@Collar
@Retrieve_Collar_Profile_Nigative_scenarios
@Collar_Nigative
@ReportName Collar_Nigative
@Link



Narrative:
In order to test Get_Collar_Data service
As a tester
I want to make sure all return the code 4xx for GET scenarios


Scenario: TC-001_COLLAR_Negative: Get Collar data using Invalid userId

Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is get
And The service url equals: Get_Collar_data with Existing_User_ID with Existing_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 403


Scenario: TC-002_COLLAR_Negative: Get Collar data using Invalid collarId
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is get
And The service url equals: Get_Collar_data with Same_User_ID with Existing_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 403



Scenario: TC-003_COLLAR_Negative: Get Collar data using unexisting data for user/collar IDs

Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is get
And The service url equals: Get_Collar_data with Not_Exist_User_ID with Not_Exist_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 404



Scenario: TC-004_COLLAR_Negative: Get Collar data using userId without a collar
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is get
And The service url equals: Get_Collar_data with Same_User_ID with Empty_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 200

