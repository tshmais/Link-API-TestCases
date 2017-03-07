Meta:
@BaseStation
@Delete_BaseStation_Nigative_scenarios
@BaseStation_Nigative
@ReportName BaseStation_Nigative
@Link


Scenario: TC-001_Base_Nigative: Delete Base by another user

Given Create new user
And Login with valid credentials
And Create new BaseStation
When Retrieve first id from response
And service method is delete
And The service url equals: Delete_Base_Station with Existing_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And add Session link-app-id to Request header
Then the service response should be: 403

Scenario: TC-002_Base_Positive: Delete Same base twice
Given Create new user
And Login with valid credentials
When Create new app
And Retrieve second id from response
And Create new BaseStation
When Retrieve first id from response
And service method is delete
And The service url equals: Delete_Base_Station with Same_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And add Session link-app-id to Request header
Then the service response should be: 200
And service method is delete
And The service url equals: Delete_Base_Station with Same_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And add Session link-app-id to Request header
Then the service response should be: 404

Scenario: TC-003_Base_Negative: Delete Base using empty userId
Given Create new user
And Login with valid credentials
And Create new BaseStation
When Retrieve first id from response
And service method is delete
And The service url equals: Delete_Base_Station with Empty_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 405


Scenario: TC-004_Base_Negative: Delete Base using not existing userId
Given Create new user
And Login with valid credentials
And Create new BaseStation
When Retrieve first id from response
And service method is delete
And The service url equals: Delete_Base_Station with Not_Exist_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And add Session link-app-id to Request header
Then the service response should be: 404


Scenario: TC-005_Base_Negative: Delete Base using empty baseId
Given Create new user
And Login with valid credentials
And Create new BaseStation
When Retrieve first id from response
And service method is delete
And The service url equals: Delete_Base_Station with Same_User_ID with Empty_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 405

Scenario: TC-006_Base_Negative: Delete Base using not existing baseId
Given Create new user
And Login with valid credentials
And Create new BaseStation
When Retrieve first id from response
And service method is delete
And The service url equals: Delete_Base_Station with Same_User_ID with Not_Exist_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And add Session link-app-id to Request header
Then the service response should be: 404

Scenario: TC-007_Base_Negative: Delete Base using Invalid baseId
Given Create new user
And Login with valid credentials
And Create new BaseStation
When Retrieve first id from response
And service method is delete
And The service url equals: Delete_Base_Station with Same_User_ID with Existing_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And add Session link-app-id to Request header
Then the service response should be: 403

