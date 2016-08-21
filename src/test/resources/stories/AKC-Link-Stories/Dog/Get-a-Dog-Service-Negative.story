Meta:
@Dog
@Dog_Profile_Negative_scenarios
@Dog_Negative
@ReportName Dog_Negative
@Link


Narrative:
In order to test Get_a_Dog_service
As a tester
I want to make sure all return the code 200 for GET scenarios

Scenario: TC-001_DOG_Negative: Get a dog data using empty value for dog ID
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is get
And The service url equals: Get_a_Dog with Same_User_ID with Empty_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 200

Scenario: TC-002_DOG_Negative: Get a dog data using Not_Exist_ID value for dog ID
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is get
And The service url equals: Get_a_Dog with Same_User_ID with Not_Exist_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 404

Scenario: TC-003_DOG_Negative: Get a dog data using Existing_ID value for dog ID
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is get
And The service url equals: Get_a_Dog with Same_User_ID with Existing_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 403