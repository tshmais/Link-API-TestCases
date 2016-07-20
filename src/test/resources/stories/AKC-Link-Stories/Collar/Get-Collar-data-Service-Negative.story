Meta:
@Collar
@Link


Narrative:
In order to test Get_Collar_Data service
As a tester
I want to make sure all return the code 4xx for GET scenarios

Scenario: TC-001_COLLAR_Negative: Verify Get Collar data service using empty data  for Collar/User IDs
Given Create new user
And Login with valid cridintials
And service method is get
When the service url equal: Get_Collar_Data_service with userId and collarId
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200
|--And json response should equal:Positive_TC-001_Get_User's_Dogs_service

Scenario: TC-002_COLLAR_Negative: Verify Get Collar data service using Invalid userId
Given Create new user
And Login with valid cridintials
And service method is get
When the service url equal: Get_Collar_Data_service with userId and collarId
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200
|--And json response should equal:Positive_TC-001_Get_User's_Dogs_service


Scenario: TC-003_COLLAR_Negative: Verify Get Collar data service using Invalid collarId
Given Create new user
And Login with valid cridintials
And service method is get
When the service url equal: Get_Collar_Data_service with userId and collarId
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200
|--And json response should equal:Positive_TC-001_Get_User's_Dogs_service


Scenario: TC-004_COLLAR_Negative: Verify Get Collar data service using not existing data for user/collar IDs
Given Create new user
And Login with valid cridintials
And service method is get
When the service url equal: Get_Collar_Data_service with userId and collarId
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200
|--And json response should equal:Positive_TC-001_Get_User's_Dogs_service


Scenario: TC-005_COLLAR_Negative: Verify Get Collar data service using userId without a collar
Given Create new user
And Login with valid cridintials
And service method is get
When the service url equal: Get_Collar_Data_service with userId and collarId
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200
|--And json response should equal:Positive_TC-001_Get_User's_Dogs_service


Scenario: TC-006_COLLAR_Negative: Verify Get Collar data service using existing but unassociated  user and collar IDs
Given Create new user
And Login with valid cridintials
And service method is get
When the service url equal: Get_Collar_Data_service with userId and collarId
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200
|--And json response should equal:Positive_TC-001_Get_User's_Dogs_service
