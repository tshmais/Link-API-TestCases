Meta:
@Add_Collar_Negative_scenarios
@Collar_Negative
@ReportName Collar_Negative
@Collar
@Link


Narrative:
In order to test New_Collar service
As a tester
I want to make sure all return the code 4xx
    
Scenario:TC-001_COLLAR_Negative: Verify Add Collar service using empty data  for deviceId
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Add_New_Collar_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "deviceId" : "",
    "hardwareVersion" : "DS5s60",
    "firmwareVersion" : "1.1"
}

Then the service response should be: 409

Scenario: TC-002_COLLAR_Negative: Verify Add Collar service using empty data  for hardwareVersion
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Add_New_Collar_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "deviceId" : "Generated-deviceId",
    "hardwareVersion" : "",
    "firmwareVersion" : "1.1"
}

Then the service response should be: 201


Scenario: TC-003_COLLAR_Negative: Verify Add Collar service using empty data  for firmwareVersion
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Add_New_Collar_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "deviceId" : "Generated-deviceId",
    "hardwareVersion" : "DS5s60",
    "firmwareVersion" : ""
}

Then the service response should be: 201



Scenario: TC-004_COLLAR_Negative: Verify Add Collar service using invalid data  for deviceId
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Add_New_Collar_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "imei" : "@233%",
    "hardwareVersion" : "DS5s60",
    "firmwareVersion" : "1.1"
}

Then the service response should be: 409


Scenario: TC-005_COLLAR_Negative: Verify Add Collar service using invalid data  for hardwareVersion
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Add_New_Collar_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "deviceId" : "Generated-deviceId",
    "hardwareVersion" : "%$",
    "firmwareVersion" : "1.1"
}

Then the service response should be: 201


Scenario: TC-006_COLLAR_Negative: Verify Add Collar service using invalid data  for firmwareVersion
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Add_New_Collar_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {	
    "deviceId" : "Generated-deviceId",
    "hardwareVersion" : "123",
    "firmwareVersion" : "(^)"
}

Then the service response should be: 201
                                    
Scenario: TC-007_COLLAR_Negative: Verify Add Collar service using deleted data  for  exist collar
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Add_New_Collar_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add to the header Authorization with value 55dffa77-870e-4c81-bfaf-c147944f2d31
And we set Body with {
    "deviceId" : "24634756734522",
    "hardwareVersion" : "DS5s60",
    "firmwareVersion" : "1.1"
}

Then the service response should be: 401

Scenario: TC-009_COLLAR_Negative: Verify Add Collar service using empty data  for All parametes
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Add_New_Collar_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "deviceId" : "",
    "hardwareVersion" : "",
    "firmwareVersion" : ""
}

Then the service response should be: 409