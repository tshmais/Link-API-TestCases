Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is delete
And The service url equals: Delete_Collar with Same_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 200
And I want to open a connection to MySQL DB
And I want to pull the data from the DB using Get_Deleted_Collar query and response ID
And I want to close the MySQL DB connection
And The Collar should be deleted