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

Scenario: TC-001_BASE_Positive: Add BaseStation for new user with maximum limit digits in all fields
Given Create new user
And Login with valid credentials
When Create new app
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "Home aadcdasfgdfgdcwHome aadcdasfgdfgdcw123gv",
  "latitude": "90.99999999999999",
  "longitude": "-180.99999999999997"
}
Then the service response should be: 201


Scenario: TC-006_BASE_Positive: Add BaseStation that has a leading Zeroís[000] for macAddrId with non English language in title field
Given Create new user
And Login with valid credentials
And Create new app
When Retrieve second id from response
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "«·⁄—»Ì…",
  "latitude": "38.706863",
  "longitude": "-90.298205"
}
Then the service response should be: 201
And Retrieve first id from response
And I want to open a connection to MySQL DB
And I want to pull the data from the DB using Get_base query and response ID
And json path id should be : 0 
And json path version should be : 1
And json path macAddrId should be : 2
And json path title should be : 3
And json path latitude should be : 4
And json path longitude should be : 5
And json path primaryOwnerId should be : 6

Scenario: TC-007_BASE_Positive: Add BaseStation that has a one word title with spicial characters in title field
Given Create new user
And Login with valid credentials
And Create new app
When Retrieve second id from response
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "#$@^",
  "latitude": "38.706863",
  "longitude": "-90.298205"
}
Then the service response should be: 201
And Retrieve first id from response
And I want to open a connection to MySQL DB
And I want to pull the data from the DB using Get_base query and response ID
And json path id should be : 0 
And json path version should be : 1
And json path macAddrId should be : 2
And json path title should be : 3
And json path latitude should be : 4
And json path longitude should be : 5
And json path primaryOwnerId should be : 6


Scenario: TC-008_BASE_Positive: Add BaseStation that has a latitude with range 90 with text file format in title feild
Given Create new user
And Login with valid credentials
And Create new app
When Retrieve second id from response
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "Garden.html",
  "latitude": "90.706863",
  "longitude": "-90.298205"
}
Then the service response should be: 201
And Retrieve first id from response
And I want to open a connection to MySQL DB
And I want to pull the data from the DB using Get_base query and response ID
And json path id should be : 0 
And json path version should be : 1
And json path macAddrId should be : 2
And json path title should be : 3
And json path latitude should be : 4
And json path longitude should be : 5
And json path primaryOwnerId should be : 6


Scenario: TC-009_BASE_Positive: Add BaseStation that has a longitude in range 185 with photo format in title feild
Given Create new user
And Login with valid credentials
And Create new app
When Retrieve second id from response
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "Garden.JPEG",
  "latitude": "90.706863",
  "longitude": "-90.706863"
}
Then the service response should be: 201
And Retrieve first id from response
And I want to open a connection to MySQL DB
And I want to pull the data from the DB using Get_base query and response ID
And json path id should be : 0 
And json path version should be : 1
And json path macAddrId should be : 2
And json path title should be : 3
And json path latitude should be : 4
And json path longitude should be : 5
And json path primaryOwnerId should be : 6




Scenario: TC-010_BASE_Positive: Add BaseStation that has a macAddrId with 12 digits included chars and javascript code in title field
Given Create new user
And Login with valid credentials
And Create new app
When Retrieve second id from response
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "<script>alert(document.cookie);</script>",
  "latitude": "90.706863",
  "longitude": "170.706863"
}
Then the service response should be: 201
And Retrieve first id from response
And I want to open a connection to MySQL DB
And I want to pull the data from the DB using Get_base query and response ID
And json path id should be : 0 
And json path version should be : 1
And json path macAddrId should be : 2
And json path title should be : 3
And json path latitude should be : 4
And json path longitude should be : 5
And json path primaryOwnerId should be : 6


Scenario: TC-011_BASE_Positive: Add BaseStation that has a macAddrId with 11 digits and can have leading Zeroís and html script in title field
Given Create new user
And Login with valid credentials
And Create new app
When Retrieve second id from response
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
   "macAddrId": "00A00B00120",
  "title": "<html> <body> <h1>Link</h1> </body> </html>",
  "latitude": "90.706863",
  "longitude": "170.706863"
}
Then the service response should be: 409

Scenario: TC-012_BASE_Positive: Add BaseStation that has a macAddrId with 13 digits and can have leading Zeroís and sql query in title field
Given Create new user
And Login with valid credentials
And Create new app
When Retrieve second id from response
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
   "macAddrId": "00A00B0012001",
  "title": "SELECT * FROM link_main.dog where id = 1;",
  "latitude": "90.706863",
  "longitude": "185.706863"
}
Then the service response should be: 409

Scenario: TC-013_BASE_Positive: Add BaseStation that has a title with one character
Given Create new user
And Login with valid credentials
And Create new app
When Retrieve second id from response
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "A",
  "latitude": "90.706863",
  "longitude": "185.706863"
}
Then the service response should be: 409

Scenario: TC-014_BASE_Positive: Add BaseStation that has a title with 46 characters
Given Create new user
And Login with valid credentials
And Create new app
When Retrieve second id from response
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "AA BB CC DD EE FF GG HH II JJ KK LL MM NN OO BB QQ RR SS TT QQ VV WW XX YY ZZ",
  "latitude": "90.706863",
  "longitude": "185.706863"
}
Then the service response should be: 409

Scenario: TC-015_BASE_Positive: Add BaseStation that has a latitude in range [-95.1235]
Given Create new user
And Login with valid credentials
And Create new app
When Retrieve second id from response
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "AA",
  "latitude": "-95.1235",
  "longitude": "185.706863"
}
Then the service response should be: 409

Scenario: TC-016_BASE_Positive: Add BaseStation that has a latitude in range [+95.1235]
Given Create new user
And Login with valid credentials
And Create new app
When Retrieve second id from response
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "AA",
  "latitude": "+95.1235",
  "longitude": "185.706863"
}
Then the service response should be: 409

Scenario: TC-017_BASE_Positive: Add BaseStation that has a longitude in range [-185.1235]
Given Create new user
And Login with valid credentials
And Create new app
When Retrieve second id from response
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "AA",
  "latitude": "+90.706863",
  "longitude": "-185.706863"
}
Then the service response should be: 409

Scenario: TC-018_BASE_Positive: Add BaseStation that has a longitude in range [+185.1235]
Given Create new user
And Login with valid credentials
And Create new app
When Retrieve second id from response
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "AA",
  "latitude": "+90.706863",
  "longitude": "+185.706863"
}
Then the service response should be: 409


Scenario: TC-033_BASE_Positive: Add BaseStation that has a longitude in range 185
Given Create new user
And Login with valid credentials
And Create new app
When Retrieve second id from response
And service method is post
When service url equal : Add_BaseStation
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add Session link-app-id to Request header
And we set Body with {
   "macAddrId": "Generated-macid",
  "title": "Garden",
  "latitude": "90.706863",
  "longitude": "170.706863"
}
Then the service response should be: 201
And Retrieve first id from response
And I want to open a connection to MySQL DB
And I want to pull the data from the DB using Get_base query and response ID
And json path id should be : 0 
And json path version should be : 1
And json path macAddrId should be : 2
And json path title should be : 3
And json path latitude should be : 4
And json path longitude should be : 5
And json path primaryOwnerId should be : 6

