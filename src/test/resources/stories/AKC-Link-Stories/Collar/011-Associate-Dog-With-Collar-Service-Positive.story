Meta:
@skip

Narrative:
In order to test Associate_Dog_With_Collar_Service
As a tester
I want to make sure all return the code 201 for POST scenarios


Scenario: TC-001_Dog-Collar Association_Positive: Verify Associate Dog With Collar service using Valid ID's for User,Dog and Collar
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Associate_Dog_With_Collar with userId and dogId and collarId
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200


Scenario: TC-002_Dog-Collar Association_Positive: Verify Associate Dog With Collar service using Valid ID's for User,Dog with a Collar ID that has already been associated with another dog ID
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Associate_Dog_With_Collar with userId and dogId and collarId
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200


Scenario: TC-003_Dog-Collar Association_Positive: Verify Associate Dog With Collar service using Valid ID's for User, Dog but a non existing collarId
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Associate_Dog_With_Collar with userId and dogId and collarId
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200


Scenario: TC-004_Dog-Collar Association_Positive: Verify Associate Dog With Collar service using a valid userId that has more than one collar
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Associate_Dog_With_Collar with userId and dogId and collarId
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200


Scenario: TC-005_Dog-Collar Association_Positive: Verify Associate Dog With Collar service using a valid userId that has only one collar
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Associate_Dog_With_Collar with userId and dogId and collarId
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200


Scenario: TC-006_Dog-Collar Association_Positive: Verify Associate Dog With Collar service using a valid userId that has more than one dog
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Associate_Dog_With_Collar with userId and dogId and collarId
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200


Scenario: TC-007_Dog-Collar Association_Positive: Verify Associate Dog With Collar service using a valid userId that has only one dog
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Associate_Dog_With_Collar with userId and dogId and collarId
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200

