Meta:
@User
@Create_User_App_Positive_scenarios
@User_App_Positive
@ReportName User_App_Positive
@Link

Scenario: TC-001_Create_User_App_Positive: Add new user app instance with valid data
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
  "applePushToken": "90jsdna78sdadsoo-updated",
  "bleEnabled": true,
  "notificationEnabled": true,
  "locationEnabled": true,
   "deviceName": "John's iPhone"
}
Then the service response should be: 201




Scenario: TC-002_Create_User_App_Positive: Add multiple user apps for the same user

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
  "applePushToken": "90jsdna78sdadsoo-updated",
  "bleEnabled": true,
  "notificationEnabled": true,
  "locationEnabled": true,
   "deviceName": "John's iPhone"
}
Then the service response should be: 201
And service method is post
And service url equal : Add_User_App
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "userId": "UserID",
  "appVersion": "1.0",
  "deviceModel": "Galaxy 3",
  "osVersion": "Android 4.1",
  "deviceId": "Generated_deviceId",
  "firebaseToken": "Generated_firebaseToken",
  "applePushToken": "90jsdna78sdadsoo-updated",
  "bleEnabled": true,
  "notificationEnabled": true,
  "locationEnabled": true,
   "deviceName": "John's iPhone"
}
And the service response should be: 201


