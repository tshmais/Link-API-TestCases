Meta:
@BaseStation
@Update_BaseStation_Postive_scenario
@BaseStation_Postive
@ReportName BaseStation_Positive
@Link

Narrative:
In order to test Update BaseStation service
As a tester
I want to make sure all return the code 200
                                  
Scenario: TC-001_DOG_Positive: Update base
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
    "primaryOwnerId": UserID
}
Then the service response should be: 200