Meta:
@Collars
@Retrieve_Collars_Profile_Negative_scenarios
@Collars_Negative
@ReportName Collars_Negative
@Link

Narrative:
In order to test Retrieve Collars Service
As a tester
I want to make sure all return the code 2xx


Scenario: TC-001_COLLAR_Negative: Get Collars data for Empty userId
Given Create new user
And Login with valid credentials
And Create new collar
When service method is get
When Retrieve first id from response
And URL equal: Get_Collars_data with Empty_User_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 400

Scenario: TC-002_COLLAR_Negative: Get Collars data for unexisting userId
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
When service method is get
And URL equal: Get_Collars_data with Not_Exist_User_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 404



Scenario: TC-003_COLLAR_Negative: Get Collars data for existing userId
Given Create new user
And Login with valid credentials
And Create new collar
When service method is get
When Retrieve first id from response
And URL equal: Get_Collars_data with Existing_User_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 403