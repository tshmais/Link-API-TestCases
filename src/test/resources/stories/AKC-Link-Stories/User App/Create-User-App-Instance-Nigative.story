Meta:
@User_App
@Create_User_App_Nigative_scenarios
@User_App_Nigative
@ReportName User_App_Nigative
@Link

Scenario: TC-001_Create_User_App_Nigative: Add new user app with exist device ID
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
  "locationEnabled": true
}
Then the service response should be: 201
And Create new user
And Login with valid credentials
And service method is post
And service url equal : Add_User_App
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "userId": "UserID",
  "appVersion": "1.0",
  "deviceModel": "Galaxy 3",
  "osVersion": "Android 4.1",
  "deviceId": "Same_Device_ID",
  "firebaseToken": "Generated_firebaseToken",
  "applePushToken": "90jsdna78sdadsoo-updated",
  "bleEnabled": true,
  "notificationEnabled": true,
  "locationEnabled": true
}
Then the service response should be: 409

Scenario: TC-002_Create_User_App_Nigative: Add new user app by another user
Given Create new user
And Login with valid credentials
And service method is post
When URL equal: Add_User_App with Existing_User_ID
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
  "locationEnabled": true
}
Then the service response should be: 403
