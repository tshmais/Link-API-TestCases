Meta:
@BaseStation
@Post_BaseStation_Registration_Status_Positive_scenarios
@BaseStation_Positive
@ReportName BaseStation_Positive
@Link


Narrative:
In order to test Base Registration Status service
As a tester
I want to make sure all return the code 200
                                  
Scenario: TC-001_COLLAR_Positive: Check BaseStation Registration Status service using one MacAddr_ID for user with registered and access as "true"   
Given Create new user
And Login with valid credentials
And Create new BaseStation
When I want to open a connection to MySQL DB
And I want to pull the data from the DB using Get_MacAddr query with response ID
And I want to close the MySQL DB connection
And service method is post
And the service url is: Bases_Registration_Status
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "baseMacAddresses": [
    "First_DeviceId"
  ]
}
Then the service response should be: 200




Scenario: TC-002_COLLAR_Positive: Check BaseStation Registration Status service using multiple MacAddr_ID for user with registered and access as "true"   
Given Create new user
And Login with valid credentials
And Create new BaseStation
And Create new BaseStation
And Create new BaseStation
When I want to open a connection to MySQL DB
And I want to pull the data from the DB using Get_MacAddr query with response ID
And I want to close the MySQL DB connection
And service method is post
And the service url is: Bases_Registration_Status
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "baseMacAddresses": [
    "First_DeviceId",
    "Second_DeviceId",
    "Third_DeviceId"
  ]
}
Then the service response should be: 200


Scenario: TC-003_COLLAR_Positive: Check BaseStation Registration Status service using one MacAddr_ID for user with registered and access as "false"   
Given Create new user
And Login with valid credentials
And Create new BaseStation
When I want to open a connection to MySQL DB
And I want to pull the data from the DB using Get_Exist_MacAddr_ID query
And I want to close the MySQL DB connection
And service method is post
And the service url is: Bases_Registration_Status
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "baseMacAddresses": [
    "First_DeviceId"
  ]
}
Then the service response should be: 200