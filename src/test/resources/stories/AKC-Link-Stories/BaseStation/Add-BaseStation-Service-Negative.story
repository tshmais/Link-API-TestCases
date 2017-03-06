Meta:
@BaseStation
@Add_BaseStation_Negative_scenarios
@BaseStation_Negative
@ReportName BaseStation_Negative
@Link

Narrative:
In order to test Add Base Station service
As a tester
I want to make sure all return the code Pass

Scenario:TC-001_BASE_Negative: Create Base using empty data for macAddrId
Given Create new user
And Login with valid credentials
When Create new app
And Retrieve second id from response
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
   "macAddrId": "",
  "title": "Home Base",
  "latitude": "38.706863",
  "longitude": "-90.298205"
}
Then the service response should be: 409

Scenario:TC-002_BASE_Negative: Create Base using empty data for title
Given Create new user
And Login with valid credentials
When Create new app
And Retrieve second id from response
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "",
  "latitude": "38.706863",
  "longitude": "-90.298205"
}
Then the service response should be: 409

Scenario:TC-003_BASE_Negative: Create Base using empty data for latitude
Given Create new user
And Login with valid credentials
When Create new app
And Retrieve second id from response
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "Home",
  "latitude": "",
  "longitude": "-90.298205"
}
Then the service response should be: 409

Scenario:TC-004_BASE_Negative: Create Base using empty data for longitude
Given Create new user
And Login with valid credentials
When Create new app
And Retrieve second id from response
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "Home",
  "latitude": "38.706863",
  "longitude": ""
}
Then the service response should be: 409

Scenario:TC-005_BASE_Negative: Create Base using empty data for All parameters
Given Create new user
And Login with valid credentials
When Create new app
And Retrieve second id from response
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
   "macAddrId": "",
  "title": "",
  "latitude": "",
  "longitude": ""
}
Then the service response should be: 409

Scenario:TC-006_BASE_Negative: Create Base using invalid data for macAddrId
Given Create new user
And Login with valid credentials
When Create new app
And Retrieve second id from response
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
  "macAddrId": "#$",
  "title": "Home",
  "latitude": "38.706863",
  "longitude": "-90.298205"
}
Then the service response should be: 409

Scenario:TC-007_BASE_Negative: Create Base using invalid data for title
Given Create new user
And Login with valid credentials
When Create new app
And Retrieve second id from response
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
  "macAddrId": "Generated-macid",
  "title": "#$",
  "latitude": "38.706863",
  "longitude": "-90.298205"
}
Then the service response should be: 201

Scenario:TC-008_BASE_Negative: Create Base using invalid data for latitude
Given Create new user
And Login with valid credentials
When Create new app
And Retrieve second id from response
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
  "macAddrId": "Generated-macid",
  "title": "Home",
  "latitude": "@#",
  "longitude": "-90.298205"
}
Then the service response should be: 400

Scenario:TC-009_BASE_Negative: Create Base using invalid data for longitude
Given Create new user
And Login with valid credentials
When Create new app
And Retrieve second id from response
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
  "macAddrId": "Generated-macid",
  "title": "Home",
  "latitude": "38.706863",
  "longitude": "@#"
}
Then the service response should be: 400

Scenario:TC-010_BASE_Negative: Create Base using invalid data for All
Given Create new user
And Login with valid credentials
When Create new app
And Retrieve second id from response
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
  "macAddrId": "@#",
  "title": "@#",
  "latitude": "@#",
  "longitude": "@#"
}
Then the service response should be: 400

Scenario:TC-011_BASE_Negative: Create Base with more than the maximum limit charecters in dog title field
Given Create new user
And Login with valid credentials
When Create new app
And Retrieve second id from response
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "Home aadcdasfgd1gdcwHome aadcdasfgdfgdcw123gva",
  "latitude": "90.99999999999999",
  "longitude": "-180.99999999999997"
}
Then the service response should be: 409


Scenario:TC-012_BASE_Negative: Create Base with adding greater than 90 in latitude field 
Given Create new user
And Login with valid credentials
When Create new app
And Retrieve second id from response
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "Home",
  "latitude": "91.0",
  "longitude": "-180.0"
}
Then the service response should be: 409


Scenario:TC-013_BASE_Negative: Create Base with adding less than -90 in latitude field 
Given Create new user
And Login with valid credentials
When Create new app
And Retrieve second id from response
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "Home",
  "latitude": "-91.0",
  "longitude": "-180.0"
}
Then the service response should be: 409


Scenario:TC-013_BASE_Negative: Create Base with adding less than -180 in longitude field 
Given Create new user
And Login with valid credentials
When Create new app
And Retrieve second id from response
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "Home",
  "latitude": "89.0",
  "longitude": "-181.0"
}
Then the service response should be: 409

Scenario:TC-014_BASE_Negative: Create Base with adding greater than 180 in longitude field 
Given Create new user
And Login with valid credentials
When Create new app
And Retrieve second id from response
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "Home",
  "latitude": "89.0",
  "longitude": "181.0"
}
Then the service response should be: 409


Scenario:TC-015_BASE_Negative: Create Base without macAddrId key (Mandatory field)
Given Create new user
And Login with valid credentials
When Create new app
And Retrieve second id from response
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
   "title": "Home aadcdasfgd1gdcwHome aadcdasfgdgdcw123gva",
   "latitude": "89.0",
  "longitude": "180.0"
}
Then the service response should be: 409


Scenario:TC-016_BASE_Negative: Create Base without title key (Mandatory field)
Given Create new user
And Login with valid credentials
When Create new app
And Retrieve second id from response
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "latitude": "89.0",
  "longitude": "181.0"
}
Then the service response should be: 409


Scenario:TC-017_BASE_Negative: Create Base without latitude key (Mandatory field)
Given Create new user
And Login with valid credentials
When Create new app
And Retrieve second id from response
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "Home",
  "longitude": "180.0"
}
Then the service response should be: 409


Scenario:TC-018_BASE_Negative: Create Base without longitude key (Mandatory field)
Given Create new user
And Login with valid credentials
When Create new app
And Retrieve second id from response
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "Home",
  "latitude": "89.0"
}
Then the service response should be: 409