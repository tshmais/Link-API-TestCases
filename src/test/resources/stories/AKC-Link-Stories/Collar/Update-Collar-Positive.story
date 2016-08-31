Meta:
@Collar
@Update_Collar_Profile_Positive_scenarios
@Collar_Positive
@ReportName Collar_Positive
@Link


Narrative:
In order to test Update Collar Service
As a tester
I want to make sure all return the code 2xx


Scenario: TC-001_COLLAR_Positive: Update Collar using new valid values for all Prameters  
Given Create new user
And Login with valid credentials
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

Scenario: TC-002_COLLAR_Positive: Update Collar using mismatching values in body with URL for collarId
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is put
And service url equals : Update_Collar with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "id": "1",
  "deviceId": "Device_Id",
  "hardwareVersion": "DS5s60",
  "firmwareVersion": "1.2",
  "primaryUserId": "UserID",
  "version": 0
}
Then the service response should be: 409


Scenario: TC-003_COLLAR_Positive: Update Collar using mismatching values in body with URL for deviceId
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is put
And service url equals : Update_Collar with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "id": "collar_ID",
  "deviceId": "000000000012",
  "hardwareVersion": "DS5s60",
  "firmwareVersion": "1.2",
  "primaryUserId": "UserID",	
  "version": 0
}
Then the service response should be: 409

Scenario: TC-004_COLLAR_Positive: Update Collar using mismatching values in body with URL for primaryUserId
Given Create new user
And Login with valid credentials
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
  "primaryUserId": "1",
  "version": 0
}
Then the service response should be: 409

Scenario: TC-005_COLLAR_Positive: Update Collar using valid values for hardwareVersion
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is put
And service url equals : Update_Collar with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "id": "collar_ID",
  "deviceId": "Device_Id",
  "hardwareVersion": "12342",
  "firmwareVersion": "1.2",
  "primaryUserId": "UserID",
  "version": 0
}
Then the service response should be: 200

Scenario: TC-006_COLLAR_Positive: Update Collar using valid value for firmwareVersion
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is put
And service url equals : Update_Collar with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "id": "collar_ID",
  "deviceId": "Device_Id",
  "hardwareVersion": "12342",
  "firmwareVersion": "1",
  "primaryUserId": "UserID",
  "version": 0
}
Then the service response should be: 200

Scenario: TC-007_COLLAR_Positive: Update Collar using mismatching values in body with URL for version
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is put
And service url equals : Update_Collar with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "id": "collar_ID",
  "deviceId": "Device_Id",
  "hardwareVersion": "12342",
  "firmwareVersion": "1",
  "primaryUserId": "UserID",
  "version": 1
}
Then the service response should be: 409

Scenario: TC-008_COLLAR_Positive: Update Collar using Max number of digits
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is put
And service url equals : Update_Collar with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "id": "collar_ID",
  "deviceId": "Device_Id",
  "hardwareVersion" : "12121212121212121212",
     "firmwareVersion" : "12121212121212121212",
  "primaryUserId": "UserID",
  "version": 0
}
Then the service response should be: 200


Scenario: TC-009_COLLAR_Positive: Update Collar using min number of digits
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is put
And service url equals : Update_Collar with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "id": "collar_ID",
  "deviceId": "Device_Id",
  "hardwareVersion" : "1",
     "firmwareVersion" : "1",
  "primaryUserId": "UserID",
  "version": 0
}
Then the service response should be: 200


Scenario: TC-010_COLLAR_Positive: Update Collar using Code & Syntax (HTML, Script, Query, URL, json)
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is put
And service url equals : Update_Collar with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "id": "collar_ID",
  "deviceId": "Device_Id",
  "hardwareVersion" : "<p>test</p>",
     "firmwareVersion" : "Select * from user;",
  "primaryUserId": "UserID",
  "version": 0
}
Then the service response should be: 200

Scenario: TC-011_COLLAR_Positive: Update Collar using Special characters & Non-English characters
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is put
And service url equals : Update_Collar with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "id": "collar_ID",
  "deviceId": "Device_Id",
  "hardwareVersion" : "¿…∆≈",
  "firmwareVersion" : "¿…#∆≈",
  "primaryUserId": "UserID",
  "version": 0
}
Then the service response should be: 200

Scenario: TC-012_COLLAR_Positive: Update Collar using reserved words
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is put
And service url equals : Update_Collar with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "id": "collar_ID",
  "deviceId": "Device_Id",
  "hardwareVersion" : "import static java",
  "firmwareVersion" : "Given",
  "primaryUserId": "UserID",
  "version": 0
}
Then the service response should be: 200

Scenario: TC-013_COLLAR_Positive: Update Collar using Payload without optional fields
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is put
And service url equals : Update_Collar with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "id": "collar_ID",
  "deviceId": "Device_Id",
  "primaryUserId": "UserID",
  "version": 0
}
Then the service response should be: 200
