Meta:
@User_App
@Get_User_App_Inctance_Negative_scenarios
@User_App_Positive
@ReportName User_App_Inctance_Negative
@Link



Scenario: TC-001_Get_User_App_Nigative by using Not_Exist_ID value for user ID
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
And service method is get
When The service url equals: Get_User_App_Inctance with Same_User_ID with Not_Exist_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And the service response should be: 404


Scenario: TC-002_DOG_Negative: Get a user app data using Existing_ID value for user ID
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is get
And The service url equals: Get_User_App_Inctance with Same_User_ID with Existing_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
Then the service response should be: 403