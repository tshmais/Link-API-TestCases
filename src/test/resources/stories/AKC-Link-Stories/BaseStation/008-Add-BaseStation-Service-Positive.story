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

Scenario: TC-006_BASE_Positive: Verify Create Base service using valid data  have leading Zero’s[000] for macAddrId
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

Scenario: TC-007_BASE_Positive: Verify Create Base service using valid data [one word] for title
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

Scenario: TC-008_BASE_Positive: Verify Create Base service using valid data [90] for latitude
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

Scenario: TC-009_BASE_Positive: Verify Create Base service using valid data [185] for longitude
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

Scenario: TC-009_BASE_Positive: Verify Create Base service using valid data [185] for longitude
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
  "longitude": "170"
}
Then the service response should be: 201
And I want to open a connection to MySQL DB
And Retrieve Json path $.id response
And I want to pull the data from the DB using Select_BaseStation query with response ID
And print the value

Scenario: TC-010_BASE_Positive: Verify Create Base service using valid data [12 digits included char] for macAddrId
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
  "longitude": "170"
}
Then the service response should be: 201
And I want to open a connection to MySQL DB
And Retrieve Json path $.id response
And I want to pull the data from the DB using Select_BaseStation query with response ID
And print the value

Scenario: TC-011_BASE_Positive: Verify Create Base service using valid data [11 digits and can have leading Zero’s] for macAddrId
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
   "macAddrId": "00A00B00120",
  "title": "Garden",
  "latitude": "90",
  "longitude": "170"
}
Then the service response should be: 409

Scenario: TC-012_BASE_Positive: Verify Create Base service using valid data [13 digits and can have leading Zero’s] for macAddrId
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
   "macAddrId": "00A00B0012001",
  "title": "Garden",
  "latitude": "90",
  "longitude": "185"
}
Then the service response should be: 409

Scenario: TC-013_BASE_Positive: Verify Create Base service using valid data [1 characters] for title
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "A",
  "latitude": "90",
  "longitude": "185"
}
Then the service response should be: 409

Scenario: TC-014_BASE_Positive: Verify Create Base service using valid data [46 characters] for title
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "AA BB CC DD EE FF GG HH II JJ KK LL MM NN OO BB QQ RR SS TT QQ VV WW XX YY ZZ",
  "latitude": "90",
  "longitude": "185"
}
Then the service response should be: 409

Scenario: TC-015_BASE_Positive: Verify Create Base service using vaild data [-95.1235] for latitude
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "AA",
  "latitude": "-95.1235",
  "longitude": "185"
}
Then the service response should be: 409

Scenario: TC-016_BASE_Positive: Verify Create Base service using vaild data [+95.1235] for latitude
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "AA",
  "latitude": "+95.1235",
  "longitude": "185"
}
Then the service response should be: 409

Scenario: TC-017_BASE_Positive: Verify Create Base service using vaild data [-185.1235] for longitude
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "AA",
  "latitude": "+90",
  "longitude": "-185.1235"
}
Then the service response should be: 409

Scenario: TC-018_BASE_Positive: Verify Create Base service using vaild data [+185.1235] for longitude
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "AA",
  "latitude": "+90",
  "longitude": "+185.1235"
}
Then the service response should be: 409
