Meta:
@Collar
@Update_Collar_Profile_Negative_scenarios
@Collar_Negative87
@ReportName Collar_Negative
@Link


Narrative:
In order to test Update User Service
As a tester
I want to make sure all return the code 2xx


Scenario: TC-001_USER_Positive: Verify Update Collar service using new valid data for all Prameters 
Given Create new user
And Login with valid cridintials
And Add Collar
And service method is put
When Retreive ID's
And service url equal : Update_Dog with userID and collarID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "id": "collarID",
  "deviceId": "deviceId",
  "hardwareVersion": "DS5s60",
  "firmwareVersion": "1.2",
  "primaryUserId": userID,
  "version": 0
}

Then the service response should be: 200