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


Scenario: TC-001_COLLAR_Negative: Update Collar using empty value for collar "ID" property
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

Scenario: TC-003_COLLAR_Negative: Update Collar using empty value for primaryUserId
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


Scenario: TC-004_COLLAR_Negative: Update Collar using empty value for version
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



Scenario: TC-005_COLLAR_Negative: Update Collar using ID for another collar
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
  "hardwareVersion": "DS232",
  "firmwareVersion": "$",
  "primaryUserId": "UserID",
  "version": "0"
}

Then the service response should be: 409

Scenario: TC-006_COLLAR_Negative: Update Collar using Device_Id for another collar
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
  "deviceId": "000000000001",
  "hardwareVersion": "DS232",
  "firmwareVersion": "$",
  "primaryUserId": "UserID",
  "version": "0"
}

Then the service response should be: 409


Scenario: TC-007_COLLAR_Negative: Update Collar using Device_Id for another user collar
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
  	"primaryUserId": "1",
  	"version": "0"
}

Then the service response should be: 409


Scenario: TC-008_COLLAR_Negative: Update Collar using more than the allowed Maximum number of digits
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
  "deviceId": "00000000000013",
  "hardwareVersion": "0000000000nnnnnnnnnn6",
  "firmwareVersion": "0000000000nnnnnnnnnn6",
  "primaryUserId": "UserID",
  "version": "0"
}

Then the service response should be: 409


Scenario: TC-009_COLLAR_Negative: Update Collar using more than the allowed min number of digits
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
  "deviceId": "1234",
  "hardwareVersion": "",
  "firmwareVersion": "",
  "primaryUserId": "UserID",
  "version": "0"
}

Then the service response should be: 409

Scenario: TC-010_COLLAR_Negative: Update Collar using Code & Syntax (HTML, Script, Query, URL, json) for collar "ID" property
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is put
And service url equals : Update_Collar with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "id": "<p>test</p>",
  "deviceId": "1234",
  "hardwareVersion": "",
  "firmwareVersion": "",
  "primaryUserId": "UserID",
  "version": "0"
}

Then the service response should be: 400

Scenario: TC-011_COLLAR_Negative: Update Collar using Code & Syntax (HTML, Script, Query, URL, json) for "deviceId" property
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is put
And service url equals : Update_Collar with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "id": "collar_ID"
  "deviceId": "select * from user;",
  "hardwareVersion": "",
  "firmwareVersion": "",
  "primaryUserId": "UserID",
  "version": "0"
}

Then the service response should be: 400

Scenario: TC-012_COLLAR_Negative: Update Collar using Code & Syntax (HTML, Script, Query, URL, json) for "primaryUserId" property
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is put
And service url equals : Update_Collar with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "id": "collar_ID"
  "deviceId": "Device_Id",
  "hardwareVersion": "",
  "firmwareVersion": "",
  "primaryUserId": "acklink.com",
  "version": "0"
}

Then the service response should be: 400

Scenario: TC-013_COLLAR_Negative: Update Collar using Code & Syntax (HTML, Script, Query, URL, json) for "version" property
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is put
And service url equals : Update_Collar with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "id": "collar_ID"
  "deviceId": "Device_Id",
  "hardwareVersion": "",
  "firmwareVersion": "",
  "primaryUserId": "acklink.com",
  "version": "select * from user;"
}

Then the service response should be: 400


Scenario: TC-014_COLLAR_Negative: Update Collar using Special char & Non-English char for collar "ID" property
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is put
And service url equals : Update_Collar with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "id": "¿…#∆≈",
  "deviceId": "1234",
  "hardwareVersion": "",
  "firmwareVersion": "",
  "primaryUserId": "UserID",
  "version": "0"
}

Then the service response should be: 400

Scenario: TC-015_COLLAR_Negative: Update Collar using Special char & Non-English char for "deviceId" property
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is put
And service url equals : Update_Collar with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "id": "collar_ID"
  "deviceId": "¿…#∆≈",
  "hardwareVersion": "",
  "firmwareVersion": "",
  "primaryUserId": "UserID",
  "version": "0"
}

Then the service response should be: 400

Scenario: TC-016_COLLAR_Negative: Update Collar using Special char & Non-English char for "primaryUserId" property
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is put
And service url equals : Update_Collar with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "id": "collar_ID"
  "deviceId": "Device_Id",
  "hardwareVersion": "",
  "firmwareVersion": "",
  "primaryUserId": "¿…#∆≈",
  "version": "0"
}

Then the service response should be: 400

Scenario: TC-017_COLLAR_Negative: Update Collar using Special char & Non-English char for "version" property
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is put
And service url equals : Update_Collar with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "id": "collar_ID"
  "deviceId": "Device_Id",
  "hardwareVersion": "",
  "firmwareVersion": "",
  "primaryUserId": "UserID",
  "version": "¿…#∆≈"
}

Then the service response should be: 400


Scenario: TC-018_COLLAR_Negative: Update Collar using reserved words for collar "ID" property
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is put
And service url equals : Update_Collar with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "id": "import static java",
  "deviceId": "1234",
  "hardwareVersion": "",
  "firmwareVersion": "",
  "primaryUserId": "UserID",
  "version": "0"
}

Then the service response should be: 400

Scenario: TC-019_COLLAR_Negative: Update Collar using reserved words for "deviceId" property
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is put
And service url equals : Update_Collar with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "id": "collar_ID"
  "deviceId": "Given",
  "hardwareVersion": "",
  "firmwareVersion": "",
  "primaryUserId": "UserID",
  "version": "0"
}

Then the service response should be: 400

Scenario: TC-020_COLLAR_Negative: Update Collar using reserved words for "primaryUserId" property
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is put
And service url equals : Update_Collar with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "id": "collar_ID"
  "deviceId": "Device_Id",
  "hardwareVersion": "",
  "firmwareVersion": "",
  "primaryUserId": "Given",
  "version": "0"
}

Then the service response should be: 400

Scenario: TC-021_COLLAR_Negative: Update Collar using reserved words for "version" property
Given Create new user
And Login with valid credentials
And Create new collar
When Retrieve first id from response
And service method is put
And service url equals : Update_Collar with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "id": "collar_ID"
  "deviceId": "Device_Id",
  "hardwareVersion": "",
  "firmwareVersion": "",
  "primaryUserId": "UserID",
  "version": "import static java"
}

Then the service response should be: 400