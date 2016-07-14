Meta:
@Dog
@Dog_Profile_Positive_scenarios
@Dog_Positive
@ReportName Dog_Positive
@Link

Narrative:
In order to test User's_Dogs service
As a tester
I want to make sure all return the code 200 for GET scenarios

Scenario: TC-001_DOG_Positive: Verify Get all dogs for a user service using valid data  for New user

Given Create new user
And Login with valid cridintials
And service method is get
When service url equal : Get_User's_Dogs_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200
|--And json response should equal:Positive_TC-001_Get_User's_Dogs_service



Scenario: TC-002_DOG_Positive: Verify Get all dogs for a user service using valid data  for old user

Given Create new user
And Login with valid cridintials
And service method is get
When service url equal : Get_User's_Dogs_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200
|--And json response should equal:Positive_TC-002_Get_User's_Dogs_service


Scenario: TC-004_DOG_Positive: Verify Get all dogs for a user service using valid data  for user with multi dogs 

Given Create new user
And Login with valid cridintials
And service method is get
When service url equal : Get_User's_Dogs_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200
|--And json response should equal:Positive_TC-004_Get_User's_Dogs_service



Scenario: TC-005_DOG_Positive: Verify Get all dogs for a user service using valid data  for user with one dog 

Given Create new user
And Login with valid cridintials
And service method is get
When service url equal : Get_User's_Dogs_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200
|--And json response should equal:Positive_TC-005_Get_User's_Dogs_service



Scenario: TC-007_DOG_Positive: Verify Get all dogs for a user service using valid data  for user without dogs

Given Create new user
And Login with valid cridintials
And service method is get
When service url equal : Get_User's_Dogs_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200
And json response should equal:Positive_TC-007_Get_User's_Dogs_service