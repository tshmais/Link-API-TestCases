Meta:
@skip



Narrative:
In order to test Get_a_Dog_service
As a tester
I want to make sure all return the code 4xx for GET scenarios

Scenario: TC-001_DOG_Negative: Verify Get a dog data using empty data for dog ID
Given Create 1 Items to url : Create_User_service with body: createuserbody and the name of users start with linkAKCk with method post and 1 dog for each user and the same start with new_names
And service method is get
When the service url equal: Get_a_Dog with userId and dogId
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 403


Scenario: TC-002_DOG_Negative: Verify Get a dog data using invalid data for dog ID
Given Create 1 Items to url : Create_User_service with body: createuserbody and the name of users start with linkAKCk with method post and 1 dog for each user and the same start with new_names
And service method is get
When the service url equal: Get_a_Dog with userId and dogId
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 403


Scenario: TC-003_DOG_Negative: Verify Get a dog data using user not exist for dog ID
Given Create 1 Items to url : Create_User_service with body: createuserbody and the name of users start with linkAKCk with method post and 1 dog for each user and the same start with new_names
And service method is get
When the service url equal: Get_a_Dog with userId and dogId
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 403


Scenario: TC-004_DOG_Negative: Verify Get a dog data using a user who has no access for this dog ID

Given Create 1 Items to url : Create_User_service with body: createuserbody and the name of users start with linkAKCk with method post and 1 dog for each user and the same start with new_names
And service method is get
When the service url equal: Get_a_Dog with userId and dogId
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 403