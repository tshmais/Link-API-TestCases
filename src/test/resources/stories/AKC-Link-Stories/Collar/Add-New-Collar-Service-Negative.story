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
    
Scenario:TC-001_COLLAR_Negative: Add Collar using empty value for deviceId
Given Create new user
And Login with valid credentials
And Create new app
When Retrieve second id from response
And service method is post
When service url equal : Add_New_Collar_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
    "deviceId" : "",
    "hardwareVersion" : "DS5s60",
    "firmwareVersion" : "1.1"
}
Then the service response should be: 409

Scenario: TC-002_COLLAR_Negative: Add Collar using empty value for hardwareVersion
Given Create new user
And Login with valid credentials
And Create new app
When Retrieve second id from response
And service method is post
When service url equal : Add_New_Collar_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
  "deviceId" : "Generated-deviceId",
    "hardwareVersion" : "",
    "firmwareVersion" : "1.1"
}

Then the service response should be: 201

Scenario: TC-003_COLLAR_Negative: Add Collar using empty value for firmwareVersion
Given Create new user
And Login with valid credentials
And Create new app
When Retrieve second id from response
And service method is post
When service url equal : Add_New_Collar_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
    "deviceId" : "Generated-deviceId",
    "hardwareVersion" : "DS5s60",
    "firmwareVersion" : ""
}

Then the service response should be: 201

Scenario: TC-004_COLLAR_Negative: Add Collar using empty values for all properties
Given Create new user
And Login with valid credentials
And Create new app
When Retrieve second id from response
And service method is post
When service url equal : Add_New_Collar_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
    "deviceId" : "",
    "hardwareVersion" : "",
    "firmwareVersion" : ""
}

Then the service response should be: 409


Scenario: TC-005_COLLAR_Positive: Add Collar using more than the allowed Maximum number of digits
Given Create new user
And Login with valid credentials
And Create new app
When Retrieve second id from response
And service method is post
When service url equal : Add_New_Collar_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
    "deviceId" : "0000000000001",
    "hardwareVersion" : "121212121212121212121",
     "firmwareVersion" : "121212121212121212121"
}
Then the service response should be: 409

Scenario: TC-006_COLLAR_Positive: Add Collar using less than minimum number of digits
Given Create new user
And Login with valid credentials
And Create new app
When Retrieve second id from response
And service method is post
When service url equal : Add_New_Collar_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
    "deviceId" : "00005",
    "hardwareVersion" : "",
     "firmwareVersion" : ""
}
Then the service response should be: 409

Scenario: TC-007_COLLAR_Positive: Add Collar using Code & Syntax (HTML, Script, Query, URL, json) for deviceId
Given Create new user
And Login with valid credentials
And Create new app
When Retrieve second id from response
And service method is post
When service url equal : Add_New_Collar_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
    "deviceId" : "http://www.linkakc.com/",
    "hardwareVersion" : "1frda",
     "firmwareVersion" : "11.2"
}
Then the service response should be: 409


Scenario: TC-008_COLLAR_Positive: Add Collar using Special characters & Non-English char for deviceId
Given Create new user
And Login with valid credentials
And Create new app
When Retrieve second id from response
And service method is post
When service url equal : Add_New_Collar_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
    "deviceId" : "¿…#∆≈",
    "hardwareVersion" : "1frda",
     "firmwareVersion" : "11.2"
}
Then the service response should be: 409

Scenario: TC-009_COLLAR_Positive: Add Collar using reserved words for deviceId
Given Create new user
And Login with valid credentials
And Create new app
When Retrieve second id from response
And service method is post
When service url equal : Add_New_Collar_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
    "deviceId" : "Given",
    "hardwareVersion" : "1frda",
     "firmwareVersion" : "11.2"
}
Then the service response should be: 409