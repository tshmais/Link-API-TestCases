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

Scenario:TC-001_BASE_Negative: Verify Create Base service using empty data for macAddrId
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
   "macAddrId": "",
  "title": "Home Base",
  "latitude": "38.706863",
  "longitude": "-90.298205"
}
Then the service response should be: 409

Scenario:TC-002_BASE_Negative: Verify Create Base service using empty data for title
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "",
  "latitude": "38.706863",
  "longitude": "-90.298205"
}
Then the service response should be: 409

Scenario:TC-003_BASE_Negative: Verify Create Base service using empty data for latitude
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "Home",
  "latitude": "",
  "longitude": "-90.298205"
}
Then the service response should be: 409

Scenario:TC-004_BASE_Negative: Verify Create Base service using empty data for longitude
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "Home",
  "latitude": "38.706863",
  "longitude": ""
}
Then the service response should be: 409

Scenario:TC-005_BASE_Negative: Verify Create Base service using empty data for All parameters
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
   "macAddrId": "",
  "title": "",
  "latitude": "",
  "longitude": ""
}
Then the service response should be: 409

Scenario:TC-006_BASE_Negative: Verify Create Base service using invalid data for macAddrId
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "macAddrId": "#$",
  "title": "Home",
  "latitude": "38.706863",
  "longitude": "-90.298205"
}
Then the service response should be: 409

Scenario:TC-007_BASE_Negative: Verify Create Base service using invalid data for title
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "macAddrId": "Generated-macid",
  "title": "#$",
  "latitude": "38.706863",
  "longitude": "-90.298205"
}
Then the service response should be: 201

Scenario:TC-008_BASE_Negative: Verify Create Base service using invalid data for latitude
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "macAddrId": "Generated-macid",
  "title": "Home",
  "latitude": "@#",
  "longitude": "-90.298205"
}
Then the service response should be: 400

Scenario:TC-009_BASE_Negative: Verify Create Base service using invalid data for longitude
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "macAddrId": "Generated-macid",
  "title": "Home",
  "latitude": "38.706863",
  "longitude": "@#"
}
Then the service response should be: 400

Scenario:TC-010_BASE_Negative: Verify Create Base service using invalid data for All
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "macAddrId": "@#",
  "title": "@#",
  "latitude": "@#",
  "longitude": "@#"
}
Then the service response should be: 400

