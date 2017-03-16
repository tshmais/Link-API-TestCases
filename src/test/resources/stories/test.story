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