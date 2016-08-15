Meta:
@skip



Narrative:
In order to test Get_a_Dog_service
As a tester
I want to make sure all return the code 200 for GET scenarios

Scenario: TC-001_DOG_Positive: Verify Get dog data for a user service using valid data  for New user
Given Create 1 Items to url : Create_User_service with body: createuserbody and the name of users start with linkAKCk with method post and 1 dog for each user and the same start with new_names
And service method is get
When the service url equal: Get_a_Dog with userId and dogId
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200


!-- Scenario: TC-002_DOG_Positive: Verify Get dog data for a user using valid data  for old user
!-- Given service method is get
!-- When the service url is: Login_service
!-- And add to the header Content-Type with value application/json
!-- And we set Body with {
!--     "loginProvider": "LINK", 
!--     "loginProviderId": "emailAddress",
!--     "password": "",
!--     "loginProviderToken":""
!-- }
!-- And the service url changes to: Get_a_Dog with userId and dogId
!-- And add Session Authorization to Request header

!-- Scenario: TC-003_DOG_Positive: Verify Get dog data for a user service using valid data  for admin user
!-- Given Create 1 Items to url : Create_User_service with body: createuserbody and the name of users start with linkAKCk with method post and 1 dog for each user and the same start with new_names
!-- And service method is get
!-- When the service url equal: Get_a_Dog with userId and dogId
!-- And add to the header Content-Type with value application/json
!-- And add Session Authorization to Request header
!-- Then the service response should be: 200


Scenario: TC-004_DOG_Positive: Verify Get a dog data using valid data for a user with multi dogs 
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
"loginProvider": "LINK", 
"loginProviderId": "user93866@linkbyakc.com",
"password": "P@ssw0rd",
"loginProviderToken":""
}
And Retrieve json path $.access_token response
And Retrieve json path $.userId response
And the service url changes to: Get_a_Dog with userId and dogId
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And service method is get


Scenario: TC-005_DOG_Positive: Verify Get a dog data using valid data  for a user with one dog 
Given Create 1 Items to url : Create_User_service with body: createuserbody and the name of users start with linkAKCk with method post and 1 dog for each user and the same start with new_names
And service method is get
When the service url equal: Get_a_Dog with userId and dogId
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200


Scenario: TC-007_DOG_Positive: Verify Get a dog data using valid data  for a user without dogs
Given Create 1 Items to url : Create_User_service with body: createuserbody and the name of users start with linkAKCk with method post and 5 dog for each user and the same start with new_names
And service method is get
When the service url equal: Get_a_Dog with userId and dogId
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200



