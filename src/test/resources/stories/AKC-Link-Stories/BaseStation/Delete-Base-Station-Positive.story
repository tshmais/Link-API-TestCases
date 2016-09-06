Meta:
@BaseStation
@Delete_Base_Positive_scenarios
@BaseStation_Positive
@ReportName BaseStation_Positive
@Link


Scenario: TC-001_COLLAR_Positive: Delete new added Collar 

Given Create new user
And Login with valid credentials
And Create new BaseStation
When Retrieve first id from response
And service method is delete
And The service url equals: Delete_Base_Station with Same_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 200
And I want to open a connection to MySQL DB
And I want to pull the data from the DB using Get_Deleted_Base_Station query and response ID
And I want to close the MySQL DB connection
And The Collar should be deleted
