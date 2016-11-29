Meta:
@Adventure
@Add_Adventure_Positive_scenarios
@Adventure_Positive
@ReportName Adventure_Positive
@Link


Narrative:
In order to test Add_Adventure service
As a tester
I want to make sure all return the code 201
                                  
Scenario: TC-001__ADVENTURE_Positive: Start Adventure with one Dog.
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
    "dogIds" : [ID],
    "startTime" : "2017-11-27T06:10:54Z"  
}
Then the service response should be: 201


Scenario: TC-002__ADVENTURE_Positive: Start Adventure with multi Dog.
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And Create new dog
When Retrieve second id from response
And service method is post
And service url equal : Start_an_adventure
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Adventure in Boston",
    "dogIds" : [
    First_id,
    Second_id
    ],
    "startTime" : "2017-11-27T06:10:54Z"  
}
Then the service response should be: 201


Scenario: TC-003_ADVENTURE_Positive: Start Adventure without name.
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And Create new dog
When Retrieve second id from response
And service method is post
And service url equal : Start_an_adventure
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "",
    "dogIds" : [First_id,Second_id], 
    "startTime" : "2017-11-27T06:10:54Z"  
}
Then the service response should be: 201


Scenario: TC-004_ADVENTURE_Positive: Start Adventure without DogID.
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And Create new dog
When Retrieve second id from response
And service method is post
And service url equal : Start_an_adventure
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Adventure in Boston",
    "dogIds" : [""] , 
    "startTime" : "2017-11-27T06:10:54Z"  
}
Then the service response should be: 409

Scenario: TC-005_ADVENTURE_Positive: Start Adventure without StartTime.
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And Create new dog
When Retrieve second id from response
And service method is post
And service url equal : Start_an_adventure
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Adventure in Boston",
    "dogIds" : [First_id,Second_id], 
    "startTime" : ""  
}
Then the service response should be: 409


Scenario: TC-006_ADVENTURE_Positive: Start Adventure with past time.
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And Create new dog
When Retrieve second id from response
And service method is post
And service url equal : Start_an_adventure
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Adventure in Boston",
    "dogIds" : [First_id,Second_id], 
    "startTime" : "2015-11-27T06:10:54Z"    
}
Then the service response should be: 201


Scenario: TC-007_ADVENTURE_Positive: Start Adventure with futuer time.
Given Create new user
And Login with valid credentials
And Create new dog
When Retrieve first id from response
And Create new dog
When Retrieve second id from response
And service method is post
And service url equal : Start_an_adventure
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Adventure in Boston",
    "dogIds" : [First_id,Second_id], 
    "startTime" : "2018-11-27T06:10:54Z"    
}
Then the service response should be: 201