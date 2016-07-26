Meta:
@Collar
@Update_Collar_Profile_Positive_scenarios
@Collar_Positive
@ReportName Collar_Positive
@Link


Narrative:
In order to test Update User Service
As a tester
I want to make sure all return the code 2xx


Scenario: TC-001_COLLAR_Positive: Verify Update Collar service using new valid data for all Prameters  
Given Create new user
And Login with valid cridintials
And Create new collar
When Retrieve first id from response
And service method is put
And service url equals : Update_Collar with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "id": "collar_ID",
  "deviceId": "Device_Id",
  "hardwareVersion": "DS5s60",
  "firmwareVersion": "1.2",
  "primaryUserId": "UserID",
  "version": 0
}
Then the service response should be: 200