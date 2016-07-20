Meta:
@Collar
@Associate-Dog-With-Collar-Service-Negative
@Collar_Positive
@ReportName Collar_Negative
@Link

Narrative:
In order to test Associate_Dog_With_Collar_Service
As a tester
I want to make sure all return the code 4xx for POST scenarios


Scenario: TC-001_Dog-Collar Association_Negative: Verify Associate Dog With Collar service using invalid Ids for user/dog/collar
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Associate_Dog_With_Collar with userId and dogId and collarId
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 4xx


Scenario: TC-002_Dog-Collar Association_Negative: Verify Associate Dog With Collar service using non exsting ids for user/dog/collar
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Associate_Dog_With_Collar with userId and dogId and collarId
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 4xx


Scenario: TC-003_Dog-Collar Association_Negative: Verify Associate Dog With Collar service using empty data for  user/dog/collar
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Associate_Dog_With_Collar with userId and dogId and collarId
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 4xx


Scenario: TC-004_Dog-Collar Association_Negative: Verify Associate Dog With Collar service using unassociated ids for  user/dog/collar
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Associate_Dog_With_Collar with userId and dogId and collarId
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 4xx


Scenario: TC-005_Dog-Collar Association_Negative: Verify Associate Dog With Collar service using a collar that has already been associated with a dog
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Associate_Dog_With_Collar with userId and dogId and collarId
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 4xx


Scenario: TC-006_Dog-Collar Association_Negative: Verify Associate Dog With Collar service using valid userId with invalid dog/collar ids
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Associate_Dog_With_Collar with userId and dogId and collarId
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 4xx


Scenario: TC-007_Dog-Collar Association_Negative: Verify Associate Dog With Collar service using invalid userId with valid dog/collar ids
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Associate_Dog_With_Collar with userId and dogId and collarId
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 4xx

