Meta:
@BaseStation
@Update_BaseStation_Negative_scenario
@BaseStation_Negative
@ReportName BaseStation_Negative
@Link

Narrative:
In order to test Update BaseStation service
As a tester
I want to make sure all return the code 409
					 
Scenario: TC-001_COLLAR_Negative: Update BaseStation using empty value for BaseStation "ID" property.
Given Create new user
And Login with valid credentials
And Create new BaseStation
When Retrieve first id from response
And service method is put
And service url equals : Update_Base with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
  "id": "",
    "version": 0,
    "macAddrId": "Mac_Id",
    "title": "Home Base",
    "latitude": 38.706863,
    "longitude": -90.298205,
    "primaryOwnerId": UserID
}

Then the service response should be: 409


Scenario: TC-002_COLLAR_Negative: Update BaseStation using empty value for Version "value" property.
Given Create new user
And Login with valid credentials
And Create new BaseStation
When Retrieve first id from response
And service method is put
And service url equals : Update_Base with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
  "id": Base_Id,
    "version": "",
    "macAddrId": "Mac_Id",
    "title": "Home Base",
    "latitude": 38.706863,
    "longitude": -90.298205,
    "primaryOwnerId": UserID
}

Then the service response should be: 409


Scenario: TC-003_COLLAR_Negative: Update BaseStation using empty value for primaryOwnerId "ID" property.
Given Create new user
And Login with valid credentials
And Create new BaseStation
When Retrieve first id from response
And service method is put
And service url equals : Update_Base with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
  "id": Base_Id,
    "version": 0,
    "macAddrId": "Mac_Id",
    "title": "Home Base",
    "latitude": 38.706863,
    "longitude": -90.298205,
    "primaryOwnerId": ""
}

Then the service response should be: 409
