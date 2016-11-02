Meta:
@Adventure
@Stop_Adventure_Positive_scenarios
@Adventure_Positive
@ReportName Adventure_Positive
@Link

Scenario: TC-001__ADVENTURE_Positive: Stop an Adventure
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And service method is post
And service url equal : Start_an_adventure
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Adventure in Boston",
    "dogIds" : [ID]  
}
Then the service response should be: 201
And Retrieve second id from response
And service method is put
And The service url equals: Stop_an_adventure with Same_User_ID with Same_Adventure_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And the service response should be: 200





