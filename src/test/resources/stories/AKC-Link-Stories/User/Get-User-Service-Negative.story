Meta:
@User
@User_Profile_Negative_scenarios
@User_Negative
@ReportName User_Negative
@Link

Narrative:
In order to test Get User Service
As a tester
I want to make sure all return the code 4xx


Scenario:TC-001_USER_Negative: Get User's Data using Empty_User_ID
Given Create new user
And Login with valid credentials
And service method is get
When URL equal: Get_User_service with Empty_User_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 405

Scenario: TC-002_USER_Negative: Get User's Data using User ID not exist
Given Create new user
And Login with valid credentials
And service method is get
When URL equal: Get_User_service with Not_Exist_User_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 404



Scenario: TC-003_USER_Negative: Get User's Data using User ID already exist
Given Create new user
And Login with valid credentials
And service method is get
When URL equal: Get_User_service with Existing_User_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 403
