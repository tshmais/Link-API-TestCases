Meta:
@User_App
@Get_All_User_App_Positive_scenarios
@User_App_Positive
@ReportName User_App_Positive
@Link

Scenario: TC-001_Get_All_User_App_Positive: Get new user app instance
Given Create new user
And Login with valid credentials
And service method is post
When service url equal : Add_User_App
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "userId": "UserID",
  "appVersion": "1.0",
  "deviceModel": "Galaxy 3",
  "osVersion": "Android 4.1",
  "deviceId": "Generated_deviceId",
  "firebaseToken": "Generated_firebaseToken",
  "applePushToken": "Generated-applePushToken",
  "bleEnabled": true,
  "notificationEnabled": true,
  "locationEnabled": true,
   "deviceName": "John's iPhone"
}
Then the service response should be: 201
And service method is get
And service url equal : Get_All_User_App
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And the service response should be: 200



Scenario: TC-002_Get_All_User_App_Positive: Get new user app instance for user doesn't have app
Given Create new user
And Login with valid credentials
And service method is get
When service url equal : Get_All_User_App
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200