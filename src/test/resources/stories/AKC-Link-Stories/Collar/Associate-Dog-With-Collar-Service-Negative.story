Meta:
@Collar
@Associate-Dog-With-Collar-Service-Negative
@Collar_Negative
@ReportName Collar_Negative
@Link

Narrative:
In order to test Associate_Dog_With_Collar_Service
As a tester
I want to make sure all return the code 4xx for POST scenarios


Scenario: TC-001_Dog-Collar Association_Negative: Verify Associate Dog With Collar service using invalid Ids for user/dog/collar
Given Create new user
And Login with valid cridintials
And Create new dog
When Retrieve first id from response
And Create new collar
And Retrieve second id from response
And service method is post
And The service url equal : Associate_Dog_With_Collar with Not_Exist_User_ID and Not_Exist_First_ID and Not_Exist_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 403

Scenario: TC-002_Dog-Collar Association_Negative: Verify Associate Dog With Collar service using a valid userId and non exsting ids for dog/collar
Given Create new user
And Login with valid cridintials
And Create new dog
When Retrieve first id from response
And Create new collar
And Retrieve second id from response
And service method is post
And The service url equal : Associate_Dog_With_Collar with Same_User_ID and Not_Exist_First_ID and Not_Exist_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 404


Scenario: TC-003_Dog-Collar Association_Negative: Verify Associate Dog With Collar service using empty data for user and valid data for dog/collar ids
Given Create new user
And Login with valid cridintials
And Create new dog
When Retrieve first id from response
And Create new collar
And Retrieve second id from response
And service method is post
And The service url equal : Associate_Dog_With_Collar with Empty_User_ID and Same_First_ID and Same_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 400


Scenario: TC-004_Dog-Collar Association_Negative: Verify Associate Dog With Collar service using empty data for userId/dogId and valid data for collarId
Given Create new user
And Login with valid cridintials
And Create new dog
When Retrieve first id from response
And Create new collar
And Retrieve second id from response
And service method is post
And The service url equal : Associate_Dog_With_Collar with Empty_User_ID and Empty_First_ID and Same_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 400


Scenario: TC-005_Dog-Collar Association_Negative: Verify Associate Dog With Collar service using a collar that has already been associated with a dog
Given Create new user
And Login with valid cridintials
And Create new dog
When Retrieve first id from response
And Create new collar
And Retrieve second id from response
And service method is post
And The service url equal : Associate_Dog_With_Collar with Same_User_ID and Same_First_ID and Same_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200
And service method is post
And The service url equal : Associate_Dog_With_Collar with Same_User_ID and Same_First_ID and Same_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And the service response should be: 409


Scenario: TC-006_Dog-Collar Association_Negative: Verify Associate Dog With Collar service using valid userId with invalid dog/collar ids
Given Create new user
And Login with valid cridintials
And Create new dog
When Retrieve first id from response
And Create new collar
And Retrieve second id from response
And service method is post
And The service url equal : Associate_Dog_With_Collar with Same_User_ID and Invalid_First_ID and Invalid_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 400


Scenario: TC-007_Dog-Collar Association_Negative: Verify Associate Dog With Collar service using invalid userId with valid dog/collar ids
Given Create new user
And Login with valid cridintials
And Create new dog
When Retrieve first id from response
And Create new collar
And Retrieve second id from response
And service method is post
And The service url equal : Associate_Dog_With_Collar with Invalid_User_ID and Same_First_ID and Same_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 400


Scenario: TC-008_Dog-Collar Association_Negative: Verify Associate Dog With Collar service using invalid userId/dogId with valid collarId
Given Create new user
And Login with valid cridintials
And Create new dog
When Retrieve first id from response
And Create new collar
And Retrieve second id from response
And service method is post
And The service url equal : Associate_Dog_With_Collar with Invalid_User_ID and Invalid_First_ID and Same_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 400


Scenario: TC-009_Dog-Collar Association_Negative: Verify Associate Dog With Collar service using valid userId/dogId with invalid collarId
Given Create new user
And Login with valid cridintials
And Create new dog
When Retrieve first id from response
And Create new collar
And Retrieve second id from response
And service method is post
And The service url equal : Associate_Dog_With_Collar with Same_User_ID and Same_First_ID and Invalid_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 400


Scenario: TC-010_Dog-Collar Association_Negative: Verify Associate Dog With Collar service using valid userId with invalid dogId and valid collarId
Given Create new user
And Login with valid cridintials
And Create new dog
When Retrieve first id from response
And Create new collar
And Retrieve second id from response
And service method is post
And The service url equal : Associate_Dog_With_Collar with Same_User_ID and Invalid_First_ID and Same_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 400


Scenario: TC-011_Dog-Collar Association_Negative: Verify Associate Dog With Collar service using valid userId with invalid acceess_token and valid dogId/collarId
Given Create new user
And Login with valid cridintials
And Create new dog
When Retrieve first id from response
And Create new collar
And Retrieve second id from response
And service method is post
And The service url equal : Associate_Dog_With_Collar with Existing_User_ID and Same_First_ID and Same_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 403



Scenario: TC-012_Dog-Collar Association_Negative: Verify Associate Dog With Collar service using valid userId/dogId with  a collarId that has already been associated with another user
Given Create new user
And Login with valid cridintials
And Create new dog
When Retrieve first id from response
And Create new collar
And Retrieve second id from response
And service method is post
And The service url equal : Associate_Dog_With_Collar with Same_User_ID and Same_First_ID and Existing_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 403


Scenario: TC-013_Dog-Collar Association_Negative: Verify Associate Dog With Collar service using valid userId/collar with  a dogId that has already been associated to another user
Given Create new user
And Login with valid cridintials
And Create new dog
When Retrieve first id from response
And Create new collar
And Retrieve second id from response
And service method is post
And The service url equal : Associate_Dog_With_Collar with Same_User_ID and Existing_First_ID and Same_Second_ID
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 403

