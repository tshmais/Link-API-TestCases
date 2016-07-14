Meta:
@BaseStation
@Add_BaseStation_Positive_scenarios
@BaseStation_Positive
@ReportName BaseStation_Positive
@Link

Narrative:
In order to test Add Base Station service
As a tester
I want to make sure all return the code are pass

Scenario: TC-001_BASE_Positive: Verify Create Base service using valid data for new user
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "Home Base",
  "latitude": "38.706863",
  "longitude": "-90.298205"
}
Then the service response should be: 201
And I want to open a connection to MySQL DB
And Retrieve Json path $.id response
And I want to pull the data from the DB using Select_BaseStation query with response ID
And print the value

Scenario: TC-006_BASE_Positive: Verify Create Base service using valid data  have leading Zero 000 for macAddrId
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "Garden",
  "latitude": "38.706863",
  "longitude": "-90.298205"
}
Then the service response should be: 201
And I want to open a connection to MySQL DB
And Retrieve Json path $.id response
And I want to pull the data from the DB using Select_BaseStation query with response ID
And print the value

Scenario: TC-007_BASE_Positive: Verify Create Base service using valid data one word for title
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "Garden",
  "latitude": "38.706863",
  "longitude": "-90.298205"
}
Then the service response should be: 201
And I want to open a connection to MySQL DB
And Retrieve Json path $.id response
And I want to pull the data from the DB using Select_BaseStation query with response ID
And print the value

Scenario: TC-008_BASE_Positive: Verify Create Base service using valid data 90 for latitude
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "Garden",
  "latitude": "90",
  "longitude": "-90.298205"
}
Then the service response should be: 201
And I want to open a connection to MySQL DB
And Retrieve Json path $.id response
And I want to pull the data from the DB using Select_BaseStation query with response ID
And print the value

Scenario: TC-009_BASE_Positive: Verify Create Base service using valid data 180 for longitude
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "Garden",
  "latitude": "90",
  "longitude": "180"}
Then the service response should be: 201
And I want to open a connection to MySQL DB
And Retrieve Json path $.id response
And I want to pull the data from the DB using Select_BaseStation query with response ID
And print the value