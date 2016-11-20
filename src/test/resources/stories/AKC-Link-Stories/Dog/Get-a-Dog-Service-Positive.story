Meta:
@Dog
@Dog_Profile_Positive_scenarios
@Dog_Positive
@ReportName Dog_Positive
@Link

Narrative:
In order to test Get_a_Dog_service
As a tester
I want to make sure all return the code 200 for GET scenarios

Scenario: TC-001_DOG_Positive: Get dog data for New user
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is get
And The service url equals: Get_a_Dog with Same_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 200


Scenario: TC-004_DOG_Positive: Get dog data for user with multi dogs 
Given Create new user
And Login with valid credentials
And Create new dog
And Create new dog
And Create new dog
When Retrieve first id from response
And service method is get
And The service url equals: Get_a_Dog with Same_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 200


Scenario: TC-005_DOG_Positive: Get dog data for user with one dogs 
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is get
And The service url equals: Get_a_Dog with Same_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 200






