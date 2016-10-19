Meta:
@User_App
@Update_User_App_Positive_scenarios
@User_App_Positive
@ReportName User_App_Positive
@Link


Scenario: TC-001_Update_User_App_Positive: Update a user app instance with valid data
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
And Retrieve first id from response
And service method is put
And The service url equals: Update_User_App with Same_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "id": "ID",
  "version": 0,
  "userId": "UserID",
  "appVersion": "2.0",
  "deviceModel": "Galaxy 3",
  "osVersion": "Android 4.1",
  "deviceId": "Same_Device_ID",
  "firebaseToken": "Same_firebaseToken",
  "applePushToken": "90jsdna78sdadsoo-updated",
  "bleEnabled": true,
  "notificationEnabled": true,
  "locationEnabled": true,
   "deviceName": "John's iPhone"
}
And the service response should be: 200


Scenario: TC-002_Update_User_App_Positive: Update a user app instance with change deviceModel
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
And Retrieve first id from response
And service method is put
And The service url equals: Update_User_App with Same_User_ID with Same_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "id": "ID",
  "version": 0,
  "userId": "UserID",
  "appVersion": "2.0",
  "deviceModel": "Iphone 6",
  "osVersion": "Android 4.1",
  "deviceId": "Same_Device_ID",
  "firebaseToken": "Same_firebaseToken",
  "applePushToken": "90jsdna78sdadsoo-updated",
  "bleEnabled": true,
  "notificationEnabled": true,
  "locationEnabled": true,
   "deviceName": "John's iPhone"
}
And the service response should be: 200
