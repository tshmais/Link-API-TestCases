
Meta:
@Collar
@Update_Collar_Profile_Negative_scenarios
@Collar_Negative
@ReportName Collar_Negative
@Link


Narrative:
In order to test Update Collar Service
As a tester
I want to make sure all return the code 2XX and 4XX


Scenario: TC-001_COLLAR_Negative: Update Collar using empty value for ID
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is put
And service url equals : Update_Collar with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "id": "",
  "deviceId": "Device_Id",
  "hardwareVersion": "DS5s60",
  "firmwareVersion": "1.2",
  "primaryUserId": "UserID",
  "version": 0
}

Then the service response should be: 409

Scenario: TC-002_COLLAR_Negative: Update Collar using empty value for deviceId
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
  "deviceId": "",
  "hardwareVersion": "DS5s60",
  "firmwareVersion": "1.2",
  "primaryUserId": "UserID",
  "version": 0
}

Then the service response should be: 409

Scenario: TC-003_COLLAR_Negative: Update Collar using empty value for hardwareVersion
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
  "hardwareVersion": "",
  "firmwareVersion": "1.2",
  "primaryUserId": "UserID",
  "version": 0
}

Then the service response should be: 200

Scenario: TC-004_COLLAR_Negative: Update Collar using empty value for firmwareVersion
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
  "firmwareVersion": "",
  "primaryUserId": "UserID",
  "version": 0
}

Then the service response should be: 200

Scenario: TC-005_COLLAR_Negative: Update Collar using empty value for primaryUserId
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
  "primaryUserId": "",
  "version": 0
}

Then the service response should be: 409


Scenario: TC-006_COLLAR_Negative: Update Collar using empty value for version
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
  "version": ""
}
Then the service response should be: 409



Scenario: TC-007_COLLAR_Negative: Update Collar using invalid data for deviceId
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
  "deviceId": "@#",
  "hardwareVersion": "DS5s60",
  "firmwareVersion": "1.2",
  "primaryUserId": "UserID",
  "version": "0"
}

Then the service response should be: 409

Scenario: TC-008_COLLAR_Negative: Update Collar using invalid data for hardwareVersion
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
  "hardwareVersion": "@#",
  "firmwareVersion": "1.2",
  "primaryUserId": "UserID",
  "version": "0"
}

Then the service response should be: 200

Scenario: TC-009_COLLAR_Negative: Update Collar using invalid data for firmwareVersion
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
  "hardwareVersion": "DS232",
  "firmwareVersion": "$",
  "primaryUserId": "UserID",
  "version": "0"
}

Then the service response should be: 200

Scenario: TC-010_COLLAR_Negative: Update Collar using invalid data for primaryUserId
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
  "hardwareVersion": "DS232",
  "firmwareVersion": "1",
  "primaryUserId": "#$",
  "version": "0"
}

Then the service response should be: 400

Scenario: TC-011_COLLAR_Negative: Update Collar using invalid data for version
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
  "hardwareVersion": "DS232",
  "firmwareVersion": "1",
  "primaryUserId": "UserID",
  "version": "*"
}

Then the service response should be: 400


Scenario: TC-012_COLLAR_Negative: Update Collar using for User ID not exist
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
  "hardwareVersion": "DS232",
  "firmwareVersion": "1",
  "primaryUserId": "123456789",
  "version": "0"
}

Then the service response should be: 409

Scenario: TC-013_COLLAR_Negative: Update Collar using invalid data for ID
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is put
And service url equals : Update_Collar with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "id": "@#",
  "deviceId": "Device_Id",
  "hardwareVersion": "DS232",
  "firmwareVersion": "1",
  "primaryUserId": "UserID",
  "version": "0"
}

Then the service response should be: 400


Scenario: TC-014_COLLAR_Negative: Update Collar using Collar ID not exist
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
  "deviceId": "019101299287",
  "hardwareVersion": "DS232",
  "firmwareVersion": "1",
  "primaryUserId": "UserID",
  "version": "0"
}

Then the service response should be: 409

