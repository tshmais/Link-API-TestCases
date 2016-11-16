Meta:
@Collar
@Retrieve_Collar_Nigative_scenarios
@Collar_Nigative
@ReportName Collar_Nigative
@Link



Scenario: TC-001_COLLAR_Nigative: Delete Collar association with dog

Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And Create new collar
And Retrieve second id from response
And service method is post
And The service url equal : Associate_Dog_With_Collar with Same_User_ID and Same_First_ID and Same_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200
And service method is delete
And The service url equals: Delete_Collar with Same_User_ID with Same_Collar_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 409


Scenario: TC-002_COLLAR_Nigative: Delete Collar by another user

Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is delete
And The service url equals: Delete_Collar with Existing_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 403

Scenario: TC-003_COLLAR_Positive: Delete Same collar twice
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is delete
And The service url equals: Delete_Collar with Same_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 200
And service method is delete
And The service url equals: Delete_Collar with Same_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 404


Scenario: TC-004_COLLAR_Negative: Delete Collar using empty userId
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is delete
And The service url equals: Delete_Collar with Empty_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 405


Scenario: TC-005_COLLAR_Negative: Delete Collar using not existing userId
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is delete
And The service url equals: Delete_Collar with Not_Exist_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 404


Scenario: TC-006_COLLAR_Negative: Delete Collar using empty collarId
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is delete
And The service url equals: Delete_Collar with Same_User_ID with Empty_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 405

Scenario: TC-007_COLLAR_Negative: Delete Collar using not existing collarId
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is delete
And The service url equals: Delete_Collar with Same_User_ID with Not_Exist_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 404

Scenario: TC-008_COLLAR_Negative: Delete Collar using Invalid collarId
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is delete
And The service url equals: Delete_Collar with Same_User_ID with Existing_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 403

