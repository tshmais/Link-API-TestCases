Meta:
@Dog
@Dog_Profile_Negative_scenarios
@Dog_Negative
@ReportName Dog_Negative
@Link


Narrative:
In order to test User's_Dogs service
As a tester
I want to make sure all return the code 4XX for GET scenarios


Scenario: TC-001_DOG_Negative: Get all dogs for a user using invalid data for user parameter

Given Create new user
And Login with valid credentials
And service method is get
When the service url equal: Get_User's_Dogs_service with *
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 400



Scenario: TC-002_DOG_Negative: Get all dogs for a user using user not exist for user parameter

Given Create new user
And Login with valid credentials
And service method is get
When URL equal: Get_User's_Dogs_service with Not_Exist_User_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 404



Scenario: TC-003_DOG_Negative: Get all dogs for a user using user who has no access for user parameter

Given Create new user
And Login with valid credentials
And service method is get
When URL equal: Get_User's_Dogs_service with Existing_User_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 403


