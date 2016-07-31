Meta:
@Collar
@Associate-Dog-With-Collar-Service-Positive
@Collar_Positive
@ReportName Collar_Positive
@Link

Narrative:
In order to test Associate_Dog_With_Collar_Service
As a tester
I want to make sure all return the code 201 for POST scenarios


Scenario: TC-001_Dog-Collar Association_Positive: Verify Associate Dog With Collar service using Valid ID's for User,Dog and Collar   
Given Create new user
And Login with valid cridintials
And Create new dog
When Retrieve first id from response
And Create new collar
And Retrieve second id from response
And service method is post
And service url equals : Associate_Dog_With_Collar with 2 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200


Scenario: TC-004_Dog-Collar Association_Positive: Verify Associate Dog With Collar service using a valid userId that has more than one collar and dog

Given Create new user
And Login with valid cridintials
And Create new dog
When Retrieve first id from response
And Create new collar
And Retrieve second id from response
And service method is post
And service url equals : Associate_Dog_With_Collar with 2 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200
And Create new user
And Login with valid cridintials
And Create new dog
And Retrieve first id from response
And Create new collar
And Retrieve second id from response
And service method is post
And service url equals : Associate_Dog_With_Collar with 2 parameters
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And the service response should be: 200
