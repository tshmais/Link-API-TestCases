
Meta:
@Collar
@Update_Collar_Profile_Negative_scenarios
@Collar_Negative
@ReportName Collar_Negative
@Link


Narrative:
In order to test Update User Service
As a tester
I want to make sure all return the code 2xx


Scenario: TC-001_COLLAR_Negative: Verify Update Collar service using empty value for ID
Given Create users to url : Create_User_service with body: createuserbody with method post and collars for each user
When Retrieve first id from response
And service method is put
And service url equals : Update_Collar with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "id": "",
  "deviceId": "device_Id",
  "hardwareVersion": "DS5s60",
  "firmwareVersion": "1.2",
  "primaryUserId": "LoginID",
  "version": 0
}

Then the service response should be: 409

Scenario: TC-002_COLLAR_Negative: Verify Update Collar service using empty value for deviceId
Given Create users to url : Create_User_service with body: createuserbody with method post and collars for each user
When Retrieve first id from response
And service method is put
And service url equals : Update_Collar with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "id": "collarID",
  "deviceId": "",
  "hardwareVersion": "DS5s60",
  "firmwareVersion": "1.2",
  "primaryUserId": "LoginID",
  "version": 0
}

Then the service response should be: 409

Scenario: TC-003_COLLAR_Negative: Verify Update Collar service using empty value for hardwareVersion
Given Create users to url : Create_User_service with body: createuserbody with method post and collars for each user
When Retrieve first id from response
And service method is put
And service url equals : Update_Collar with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "id": "collarID",
  "deviceId": "device_Id",
  "hardwareVersion": "",
  "firmwareVersion": "1.2",
  "primaryUserId": "LoginID",
  "version": 0
}

Then the service response should be: 200

Scenario: TC-004_COLLAR_Negative: Verify Update Collar service using empty value for firmwareVersion
Given Create users to url : Create_User_service with body: createuserbody with method post and collars for each user
When Retrieve first id from response
And service method is put
And service url equals : Update_Collar with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "id": "collarID",
  "deviceId": "device_Id",
  "hardwareVersion": "DS5s60",
  "firmwareVersion": "",
  "primaryUserId": "LoginID",
  "version": 0
}

Then the service response should be: 200

Scenario: TC-005_COLLAR_Negative: Verify Update Collar service using empty value for primaryUserId
Given Create users to url : Create_User_service with body: createuserbody with method post and collars for each user
When Retrieve first id from response
And service method is put
And service url equals : Update_Collar with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "id": "collarID",
  "deviceId": "device_Id",
  "hardwareVersion": "DS5s60",
  "firmwareVersion": "1.2",
  "primaryUserId": "",
  "version": 0
}

Then the service response should be: 409


Scenario: TC-006_COLLAR_Negative: Verify Update Collar service using empty value for version
Given Create users to url : Create_User_service with body: createuserbody with method post and collars for each user
When Retrieve first id from response
And service method is put
And service url equals : Update_Collar with 1 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request headers
And we set Body with {
  "id": "collarID",
  "deviceId": "device_Id",
  "hardwareVersion": "DS5s60",
  "firmwareVersion": "1.2",
  "primaryUserId": "",
  "version": ""
}

Then the service response should be: 409