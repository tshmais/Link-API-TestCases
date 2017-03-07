Meta:
@Collar
@Retrieve_Collar_Positive_scenarios
@Collar_Positive
@ReportName Collar_Positive
@Link


Scenario: TC-001_COLLAR_Positive: Delete new added Collar 

Given Create new user
And Login with valid credentials
When Create new app
And Retrieve second id from response
And Create new collar
When Retrieve first id from response
And service method is delete
And The service url equals: Delete_Collar with Same_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And add Session link-app-id to Request header
Then the service response should be: 200
And I want to open a connection to MySQL DB
And I want to pull the data from the DB using Get_Deleted_Collar query and response ID
And I want to close the MySQL DB connection
And The Collar should be deleted



